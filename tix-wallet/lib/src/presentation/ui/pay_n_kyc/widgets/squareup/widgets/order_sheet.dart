/*
 Copyright 2018 Square Inc.
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
*/
import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import '../colors.dart';
import 'cookie_button.dart';

enum PaymentType {
  giftcardPayment,
  cardPayment,
  googlePay,
  applePay,
  buyerVerification,
  secureRemoteCommerce
}

const int kycPrice = 5;

String getKycPrice() => (kycPrice).toStringAsFixed(2);

class OrderSheet extends StatelessWidget {
  final bool googlePayEnabled;
  final bool applePayEnabled;

  OrderSheet({required this.googlePayEnabled, required this.applePayEnabled});

  @override
  Widget build(BuildContext context) => Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                child: _title(context),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                    minWidth: MediaQuery.of(context).size.width,
                    minHeight: 250,
                    maxHeight: MediaQuery.of(context).size.height,
                    maxWidth: MediaQuery.of(context).size.width),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      _ShippingInformation(),
                      _LineDivider(),
                      _PaymentTotal(),
                      _LineDivider(),
                      _payButtons(context),
                    ]),
              ),
            ]),
      );

  Widget _title(context) => Container(
        padding: const EdgeInsets.all(5.0),
        color: mainButtonColor,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
          const Expanded(
            child: Text(
              "Payment options",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close),
              color: closeButtonColor),
        ]),
      );

  Widget _payButtons(context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width * .44,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              onPressed: googlePayEnabled || applePayEnabled
                  ? () {
                      if (Platform.isAndroid) {
                        Navigator.pop(context, PaymentType.googlePay);
                      } else if (Platform.isIOS) {
                        Navigator.pop(context, PaymentType.applePay);
                      }
                    }
                  : null,
              child: Image(
                  image: (Theme.of(context).platform == TargetPlatform.iOS)
                      ? const AssetImage("assets/applePayLogo.png")
                      : const AssetImage("assets/googlePayLogo.png")),
            ),
          ),
          CookieButton(
            text: "Pay with card",
            onPressed: () {
              Navigator.pop(context, PaymentType.cardPayment);
            },
          ),
        ],
      );
}

class _ShippingInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(padding: EdgeInsets.only(left: 30)),
          Text(
            "Pay to",
            style: TextStyle(
                fontSize: 16,
                color: mainTextColor,
                fontWeight: FontWeight.bold),
          ),
          const Padding(padding: EdgeInsets.only(left: 20)),
          Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "SECUTIX",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 4),
                ),
                Text(
                  "Av. Général-Guisan 70a\n1009 Pully, Suisse",
                  style: TextStyle(fontSize: 15, color: subTextColor),
                ),
              ]),
        ],
      );
}

class _LineDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
      margin: const EdgeInsets.only(left: 30, right: 30),
      child: Divider(
        height: 1,
        color: dividerColor,
      ));
}

class _PaymentTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(padding: EdgeInsets.only(left: 30)),
          Text(
            "Total",
            style: TextStyle(
                fontSize: 16,
                color: mainTextColor,
                fontWeight: FontWeight.bold),
          ),
          const Padding(padding: EdgeInsets.only(left: 30)),
          Text(
            "${getKycPrice()} CHF",
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ],
      );
}

