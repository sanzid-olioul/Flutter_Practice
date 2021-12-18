import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:async';
import './models/image_model.dart';
import 'widgets/image_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Grabber',
      home: Scaffold(
        body: ImagePrint(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter++;
              click_me(counter);
            });
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
