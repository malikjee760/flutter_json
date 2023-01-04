import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List> getjsonData() async {
  String url = 'https://jsonplaceholder.typicode.com/posts';

  http.Response response = await http.get(Uri.parse(url));

  return jsonDecode(response.body);
}

// Future<Map<String , dynamic>> getjasonData() async {
//   String url = 'https://api.androidhive.info/contacts/';
//
//   http.Response response = await http.get(Uri.parse(url));
//
//   return jsonDecode(response.body);
// }
