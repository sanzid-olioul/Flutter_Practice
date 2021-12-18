import 'package:flutter/material.dart';
import 'widgets/form_widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Validations',
      home: Scaffold(
        body: FormWidget(),
      ),
    );
  }
}
