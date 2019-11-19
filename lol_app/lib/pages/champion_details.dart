import 'package:flutter/material.dart';
import 'package:lol_app/constants/strings.dart';
class ChampionDetails extends StatelessWidget{
  String championName;

  ChampionDetails({this.championName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Hero(
            tag: championName,
            child: Image.network('$squareImagePath$championName.png',width: 100,height: 100,),
          ),
        ),
        title: Text(championName),
      ),
      body: Center(
        child: Text(championName),
      ),
    );
  }
}