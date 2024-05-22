import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:persona_flutter/persona_flutter.dart';
import 'package:polygonid_flutter_sdk/common/domain/domain_logger.dart';

class KYCScreen extends StatefulWidget {
  final Future<void> Function() onComplete;

  const KYCScreen({super.key, required this.onComplete});

  @override
  KYCState createState() => KYCState();
}

class KYCState extends State<KYCScreen> {
  late InquiryConfiguration _configuration;

  late StreamSubscription<InquiryCanceled> _streamCanceled;
  late StreamSubscription<InquiryError> _streamError;
  late StreamSubscription<InquiryComplete> _streamComplete;

  @override
  void initState() {
    super.initState();

    _configuration = TemplateIdConfiguration(
      templateId: "itmpl_ECiRifqfiEQzoFH6KhSjDo869AgE",
      environment: InquiryEnvironment.sandbox,
    );

    _streamCanceled = PersonaInquiry.onCanceled.listen(_onCanceled);
    _streamError = PersonaInquiry.onError.listen(_onError);
    _streamComplete = PersonaInquiry.onComplete.listen(_onComplete);
  }

  @override
  void dispose() {
    _streamCanceled.cancel();
    _streamError.cancel();
    _streamComplete.cancel();
    super.dispose();
  }

  void _onCanceled(InquiryCanceled event) {
    logger().i("InquiryCanceled");
    logger().i("- inquiryId: ${event.inquiryId}");
    logger().i("- sessionToken: ${event.sessionToken}");
  }

  void _onError(InquiryError event) {
    logger().i("InquiryError");
    logger().i("- error: ${event.error}");
  }

  void _onComplete(InquiryComplete event) {
    logger().i("InquiryComplete");
    logger().i("- inquiryId: ${event.inquiryId}");
    logger().i("- status: ${event.status}");

    logger().i("- fields:");
    for (var key in event.fields.keys) {
      logger().i("-- key: $key, value: ${event.fields[key]}");
    }
    // TODO check useful keys: nameFirst, nameLast, emailAddress, phoneNumber, identificationNumber (on gov id), inquiryId
    //   => pass values to e-ID issuer, or simply inquiryId? or accountId? (issuer needs to verify completed inquiryId & data)

    if(event.status == "completed") {
      Fluttertoast.showToast(
          msg: "KYC successful",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0);
      widget.onComplete(); // TODO pass data to "onComplete(...)"
    } else {
      Fluttertoast.showToast(
          msg: "Failed to complete KYC. Restarting...",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      PersonaInquiry.start();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.grey[200],
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                PersonaInquiry.init(configuration: _configuration);
                PersonaInquiry.start();
              },
              child: const Text("Start KYC process!"),
            ),
          ),
        ),
    );
  }
}