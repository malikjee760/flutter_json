import 'package:flutter/material.dart';
import 'package:flutter_jason/data.dart';
import 'model/post.dart';
import 'data.dart';

void main() async {
  List myData = await getjsonData();
  List data1 = [];
  for (int i = 0; i < myData.length; i++) {
    int id = myData[i]['id'];
    int userId = myData[i]['userId'];
    String title = myData[i]['title'];
    String body = myData[i]['body'];

    data1.add(new data(id, userId, title, body));
  }
  //print(data1);

  runApp(new MaterialApp(
    title: "API",
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: ListView.builder(
            itemCount: myData.length,
            itemBuilder: (BuildContext context, int position) {
              return new Column(
                children: [
                  Text(myData[position]['id'].toString()),
                  Text(myData[position]['userId'].toString()),
                  Text(myData[position]['title']),
                  Text(myData[position]['body']),
                ],
              );
            }),
      ),
    ),
  ));
}
