import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minimal_example/src/presentation/navigations/routes.dart';
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
        body = StartFlow();
      case RegistrationStep.payScreen:
        body = PayScreen(
          onComplete: () async {
            stateMachineCall(state["mail"]!, "notify/pay");
            setCurrentStep(RegistrationStep.kycScreen);
          },
        );
      case RegistrationStep.kycScreen:
        body = KYCScreen(
          onComplete: () async {
            stateMachineCall(state["mail"]!, "notify/kyc");
            setCurrentStep(RegistrationStep.completedPage);
          },
        ); // TODO + setStatusKYC
      case RegistrationStep.completedPage:
        body = CompletedPage();
      case RegistrationStep.loading:
        body = const Center(child: CircularProgressIndicator());
      default:
        body = RestartProcess();
    }

    return Scaffold(body: Container(alignment: Alignment.center, child: body));
  }

  ///
  Widget StartFlow() {
    final state = ModalRoute.of(context)!.settings.arguments
        as Map<String, String>; // TODO test
    logger().i('ModalRoute state: <$state>');

    bool paid = state["state"] != null && state["state"] == "paid";
    String text = paid
        ? "You've already paid.\nPlease proceed with KYC."
        : "Pay and pass your KYC!";

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("It looks like you are not a verified fan yet.\nBefore receiving your TAP, please get verified.", style: TextStyle(
      fontSize: 16,
    )),
        const SizedBox(height: 18),
        Text(
          text,
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 12),
        ElevatedButton(
            onPressed: () => setCurrentStep(
                paid ? RegistrationStep.kycScreen : RegistrationStep.payScreen),
            child: const Text("Start")),
      ],
    );
  }

  ///
  Widget CompletedPage() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // TODO: add an image ~
        const Text(
          "Congratulations 🎉",
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
            onPressed: () => Navigator.popAndPushNamed(context, Routes.combinedPath),
            child: const Text("Get my tap"))
      ],
    );
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
