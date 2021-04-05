import 'package:flutter/material.dart';
import 'package:nmpdemo/pages/homepage.dart';
import 'package:nmpdemo/themes/light-theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NMP Design Demo',
      theme: lightTheme(context),
      home: HomePage(),
    );
  }
}
