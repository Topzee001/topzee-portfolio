import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'https://topzee-portfolio.vercel.app/api';

// post contact request
  Future<void> sendMessage(Map<String, dynamic> data) async {
    final response = await http.post(
      Uri.parse('$baseUrl/messages'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to send contact request');
    }
  }
}

// class ApiService {
//   final String baseUrl = 'https://topzee-portfolio.vercel.app/api';

//   Future<bool> sendMessage(ContactMessage message) async {
//     final response = await http.post(
//       Uri.parse('$baseUrl/messages'),
//       headers: {'Content-Type': 'application/json'},
//       body: jsonEncode(message.toJson()),
//     );

//     if (response.statusCode == 201) {
//       return true;
//     } else {
//       throw Exception(jsonDecode(response.body)['message']);
//     }
//   }
// }
