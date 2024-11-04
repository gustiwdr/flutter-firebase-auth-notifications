import 'dart:convert';
import 'package:http/http.dart' as http;

class FirebaseMessagingService {
  // Replace with the Bearer token for FCM v1 API
  static const String bearerToken =
      'ya29.a0AeDClZBI_U15qmQZrWqsznI-D9_-DVuNpajsyAG1M-9Kzbliy3PwL_yGd0F8lUg6JUVWXLCcScc9TA5fSPZdlt9KCtzqKIlzcEDQIDV0-Fcoayl4qR8zRCYbUaJQTUlRYPq9ioAznKspScGKhDgzw_55yssH-uH0Qg5RoepPaCgYKAZUSARESFQHGX2MiON_pmuQsJtiErh0gOBcETA0175';

  static Future<void> sendLoginSuccessNotification() async {
    try {
      final response = await http.post(
        Uri.parse(
            'https://fcm.googleapis.com/v1/projects/pemrograman-mobile-41673/messages:send'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $bearerToken',
        },
        body: jsonEncode({
          'message': {
            'token':
                'ezKUWr82S82zqge0S-r30Z:APA91bFw1PVbxgB6UfB7UXlyDPJztyEnL7qSBTB2-aYynP2aK4QiNhZKiyBaPtFxpv7oOtuR-dBl55Wfcer3AhFLHCHbY1t6K2qdHjrJjhqqfrpu4EyiW8bC78ViJa9E9migtGNYui9T',
            'notification': {
              'title': 'Login Success!',
              'body': 'You have successfully logged in!',
            },
          },
        }),
      );

      if (response.statusCode == 200) {
        print('Notification sent successfully');
      } else {
        print('Failed to send notification: ${response.statusCode}');
        print('Response: ${response.body}');
      }
    } catch (e) {
      print('Error sending notification: $e');
    }
  }
}
