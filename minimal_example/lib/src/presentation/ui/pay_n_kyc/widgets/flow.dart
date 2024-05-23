import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minimal_example/src/presentation/ui/pay_n_kyc/widgets/pay.dart';
import 'package:minimal_example/utils/state_machine_utils.dart';
import 'package:polygonid_flutter_sdk/common/domain/domain_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'kyc.dart';

class KycFlowScreen extends StatefulWidget {
  const KycFlowScreen({super.key});

  @override
  State<KycFlowScreen> createState() => _KycFlowState();
}

enum RegistrationStep {
  startFlow,
  payScreen,
  kycScreen,
  completedPage,
  loading,
  restartProcess,
}

const prefCurrentStep = 'currentStep';
const prefPreviousStep = 'previousStep';

class _KycFlowState extends State<KycFlowScreen> {
  RegistrationStep _currentStep = RegistrationStep.startFlow;
  RegistrationStep _previousStep = RegistrationStep.startFlow;

  Future<void> setCurrentStep(RegistrationStep step) async {
    // ignore restartProcess step
    if (_currentStep != RegistrationStep.restartProcess) {
      _previousStep = _currentStep;
    }
    setState(() {
      _currentStep = step;
    });
    // Save current step to local storage
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(prefCurrentStep, _currentStep.index);
    await prefs.setInt(prefPreviousStep, _previousStep.index);
  }

  Future<void> loadCurrentStep() async {
    // Load current step from local storage
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _currentStep =
          RegistrationStep.values[prefs.getInt(prefCurrentStep) ?? 0];
      _previousStep =
          RegistrationStep.values[prefs.getInt(prefPreviousStep) ?? 0];
      if (_currentStep == RegistrationStep.loading) {
        // upon retrying
        _currentStep = RegistrationStep.startFlow;
        _previousStep = RegistrationStep.startFlow;
      }
    });
  }

  void recoverLastState() {
    _currentStep = _previousStep;
  }

  @override
  void initState() {
    super.initState();
    loadCurrentStep();
  }

  @override
  Widget build(BuildContext context) {
    final state = ModalRoute.of(context)!.settings.arguments
        as Map<String, String>;
    logger().i('ModalRoute state: <$state>');

    Widget body = Container();
    switch (_currentStep) {
      case RegistrationStep.startFlow:
        bool paid = state["state"] != null && state["state"] == "paid";
        setCurrentStep(
            paid ? RegistrationStep.kycScreen : RegistrationStep.payScreen);
        body = StartFlow();
        break;
      case RegistrationStep.payScreen:
        body = PayScreen(
          onComplete: () async {
            stateMachineCall(state["mail"]!, "notify/pay");
            setCurrentStep(RegistrationStep.kycScreen);
          },
        );
        break;
      case RegistrationStep.kycScreen:
        body = KYCScreen(
          onComplete: () async {
            stateMachineCall(state["mail"]!, "notify/kyc");
            setCurrentStep(RegistrationStep.completedPage);
          },
        ); // TODO + setStatusKYC
        break;
      case RegistrationStep.completedPage:
        body = CompletedPage();
        break;
      case RegistrationStep.loading:
        body = Loading();
        break;
      default:
        body = RestartProcess();
    }

    return Scaffold(body: Container(alignment: Alignment.center, child: body));
  }

  ///
  Widget StartFlow() {
    return const Column(mainAxisAlignment:MainAxisAlignment.center, children: [
      CircularProgressIndicator(),
    ]);
  }

  ///
  Widget CompletedPage() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // TODO: add an image ~
        const Text(
          "Congratulations!",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        const Text(
          "You completed your KYC process!",
          style: TextStyle(
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 12),
        ElevatedButton(
            onPressed: () => setCurrentStep(RegistrationStep.loading),
            child: const Text("Access my wallet"))
      ],
    );
  }

  ///
  Widget Loading() {
    Navigator.pop(context, true);

    return const Column(children: [
      Text("Loading your wallet..."),
      CircularProgressIndicator(),
    ]);
  }

  ///
  Widget RestartProcess() {
    return Column(children: [
      const Text("Continue your registration process:"),
      ElevatedButton(
          onPressed: recoverLastState, child: const Text("Continue")),
    ]);
  }
}
