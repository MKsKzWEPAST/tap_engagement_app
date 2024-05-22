import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:polygonid_flutter_sdk/common/domain/domain_logger.dart';

Future<String> stateMachineCall(String email, String endUrl) async {
  String url = 'https://griffon-loved-physically.ngrok-free.app/api/$endUrl';
  Map<String, String> body = {'email': email};
  String jsonBody = json.encode(body);
  Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  try {
    final http.Response response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: jsonBody,
    );

    // Check the status code
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  } catch (e) {
    logger().e('Error making POST request: $e');
    return "";
  }
}