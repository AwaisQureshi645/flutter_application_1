// ignore_for_file: prefer_const_constructors, duplicate_import, prefer_const_literals_to_create_immutables, unused_label, use_key_in_widget_constructors

import 'dart:js';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp((MaterialApp(
    title: "Navigation Bart",
    home: HomePage(),
  )));
}

String display = '';
Color color = Colors.blueAccent;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text("Navigation Bar"),
          backgroundColor: Colors.pink,
        ),
        bottomNavigationBar: CurvedNavigationBar(
            items: [
              Icon(Icons.home),
              Icon(Icons.search),
              Icon(Icons.add),
              Icon(Icons.settings),
              Icon(Icons.card_giftcard),
            ],
            onTap: (index) {
              //  setState = setState(() {});
              if (index == 0) {
                display = "Home";
                color:
                Colors.blueGrey;
                //   Color = Colors.blueGrey;
                decoration:
                BoxDecoration(
                  color: Colors.blueGrey,
                );
              } else if (index == 1) {
                display = "search";
                //   Color = Colors.blueGrey;
                decoration:
                BoxDecoration(
                  color: Colors.green,
                );
              } else if (index == 2) {
                display = "Add";
                //   Color = Colors.blueGrey;
                decoration:
                BoxDecoration(color: Colors.orangeAccent);
              } else if (index == 3) {
                display = "Settings";
                //   Color = Colors.blueGrey;
                decoration:
                BoxDecoration(
                  color: Colors.purpleAccent,
                );
              } else {
                display = "gift";
                //   Color = Colors.blueGrey;
                decoration:
                BoxDecoration(
                  color: Color.fromARGB(255, 43, 5, 68),
                );
              }
            }),
        body: Container(
          child: displays(),
        ));
  }
}

class displays extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: getListView(),
    );
  }
}

List<String> getListElement() {
  var item = List<String>.generate(100, (conter) => "item$conter");
  return item;
}

Widget getListView() {
  var listItem = getListElement();
  var listView = ListView.builder(itemBuilder: (context, index) {
    return ListTile(
      title: Text(listItem[index]),
    );
  });
  return listView;
}
