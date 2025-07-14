// import 'package:api_project/api_project.dart' as api_project;
// import 'dart:convert';
// import 'package:http/http.dart' as http;

// void main() async {
//   final url = Uri.parse('https://open.er-api.com/v6/latest/USD');

//   try {
//     final response = await http.get(url);
//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);
//       final double rate = data['rates']['PKR'];
//       print('USD to PKR: $rate');
//     } else {
//       print('Failed: ${response.statusCode}');
//     }
//   } catch (e) {
//     print('Error: $e');
//   }
// }

// import 'dart:convert';
// import 'package:http/http.dart' as http;

// void main() async {
//   final url = Uri.parse('https://jsonplaceholder.typicode.com/users');

//   try {
//     final response = await http.get(url);
//     if (response.statusCode == 200) {
//       final List<dynamic> users = jsonDecode(response.body);

//       for (var user in users) {
//         print('Name: ${user['name']}');
//         print('Email: ${user['email']}');
//         print('City: ${user['address']['city']}');
//         print('Geo: ${user['address']['geo']}');

//         print('Company: ${user['company']['name']}');
//         print('----------------------------------------');
//       }
//     } else {
//       print('Failed: ${response.statusCode}');
//     }
//   } catch (e) {
//     print("Error: $e");
//   }
// }

import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

Stream<double> getExchangeRateStream() {
  return Stream.periodic(Duration(seconds: 5), (_) async {
    final url = Uri.parse('https://open.er-api.com/v6/latest/USD');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final double rate = data['rates']['PKR'];

        return rate;
      } else {
        throw Exception('Failed: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
      return -1.0;
    }
  }).asyncMap((i) => i);
}

void main() {
  print('🔁 Starting USD to PKR live stream...\n');

  getExchangeRateStream().listen(
    (rate) {
      if (rate != -1.0) {
        print('💰 USD to PKR: $rate');
      } else {
        print('⚠️ Error retrieving exchange rate.');
      }
    },
    onError: (error) => print('Stream Error: $error'),
    onDone: () => print('Stream closed.'),
  );
}
