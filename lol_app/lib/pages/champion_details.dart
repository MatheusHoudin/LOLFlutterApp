import 'package:flutter/material.dart';
import 'package:lol_app/constants/strings.dart';
import 'package:lol_app/model/champion.dart';
class ChampionDetails extends StatelessWidget{
  Champion champion;

  ChampionDetails({this.champion});

  @override
  Widget build(BuildContext context) {
    print("aa");
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Hero(
            tag: champion.name,
            child: Image.network('$squareImagePath${champion.name}.png',width: 100,height: 100,),
          ),
        ),
        title: Text(champion.name),
      ),
      body: Center(
        child: Column(
          children: champion.skills.map((skill) => Image.network('http://ddragon.leagueoflegends.com/cdn/9.23.1/img/x${skill.url}',width: 100,height: 100,)).toList(),
        ),
      ),
    );
  }
}