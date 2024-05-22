import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minimal_example/src/presentation/ui/pay_n_kyc/widgets/pay.dart';
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

  Object? _personal_data; // TODO use to retrieve info from KYC

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
    Widget body = Container();
    switch (_currentStep) {
      case RegistrationStep.startFlow:
        body = StartFlow();
      case RegistrationStep.payScreen:
        body = PayScreen(
            onComplete: () => setCurrentStep(
                RegistrationStep.kycScreen)); // TODO + setStatusPaid
      case RegistrationStep.kycScreen:
        body = KYCScreen(
            onComplete: () => setCurrentStep(
                RegistrationStep.completedPage)); // TODO + setStatusKYC
      case RegistrationStep.completedPage:
        body = CompletedPage();
      case RegistrationStep.loading:
        body = Loading();
      default:
        body = RestartProcess();
    }

    return Scaffold(body: Container(alignment: Alignment.center, child: body));
  }

  ///
  Widget StartFlow() {
    // TODO - fetch KYC state and navigate accordingly (use state given from the navigation, as we use the state earlier to know if we even need to come here)
    bool paid = false;
    String text = paid
        ? "You've already paid. Please proceed with KYC."
        : "Pay and pass our KYC to receive your TAP";

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text),
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
        const Text("Congratulation, you just completed your KYC process!"),
        ElevatedButton(
            onPressed: () => setCurrentStep(RegistrationStep.loading),
            child: const Text("Access my wallet"))
        // TODO - differentiate (first access or access for TAP)?
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
