import 'package:flutter/material.dart';
import 'pages/main_page.dart';
import 'constants/colors.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff151210),
        backgroundColor: background
      ),
      home: MainPage(),
    );
  }
}
