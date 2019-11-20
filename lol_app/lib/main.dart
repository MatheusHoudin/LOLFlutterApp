import 'package:flutter/material.dart';
import 'pages/main_page.dart';
import 'constants/colors.dart';
import 'database/database.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Database database = Database();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: background
      ),
      home: MainPage(database: database,),
    );
  }
}
