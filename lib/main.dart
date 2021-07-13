import 'package:flutter/material.dart';
import 'package:home_cleaning_ui/constants/color_scheme.dart';
import 'package:home_cleaning_ui/pages/welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Ubuntu",
        primarySwatch: Colors.blue,
        primaryColor: bgColor,
      ),
      home: WelcomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
