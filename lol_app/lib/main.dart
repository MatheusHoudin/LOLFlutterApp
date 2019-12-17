import 'package:flutter/material.dart';
import 'pages/main_page.dart';
import 'database/database.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Database database = Database();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Champions Gallery',
      debugShowCheckedModeBanner: false,
      home: MainPage(database: database,),
    );
  }
}
