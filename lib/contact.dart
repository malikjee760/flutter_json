import 'dart:convert';

import 'package:flutter/material.dart';
//import 'package:flutter_api/data.dart';
import 'package:http/http.dart' as http;
//import 'package:rflutter_alert/rflutter_alert.dart';

void main() async {
  Map<String, dynamic> myData = await getJsonData();
 List contacts = myData['contacts'];
  print(myData['contacts'][0]['phone']['mobile']);

  runApp(MaterialApp(
    title: "API",
    home: Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blueGrey,
      ),
      body: new Center(
          child: new ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (BuildContext context, int position) {
                return new Column(
                  children: [
                    // new InkWell(child: Text(contacts[position]['id'])
                    //     ,onTap: () => Alert(context: context, title: contacts[position]['email'], desc: "Flutter is awesome.").show()),
                    // Text(contacts[position]['name']),
                    // Text(contacts[position]['email']),

                  ],
                );
              })),

  )));
}

Future<Map<String, dynamic>> getJsonData() async {
  String url = 'https://api.androidhive.info/contacts/';

  http.Response response = await http.get(Uri.parse(url));

  return jsonDecode(response.body);
}
