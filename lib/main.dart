
import 'package:flutter/material.dart';
import 'model/post.dart';

void main() async {
  List myData = await getjsonData();
  print(myData);

  runApp(new MaterialApp(
    title: "API",
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
      ),
      //body: ,
    ),
  ));
}

