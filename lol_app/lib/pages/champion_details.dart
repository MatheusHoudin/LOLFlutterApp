import 'package:flutter/material.dart';
import 'package:lol_app/constants/strings.dart';
import 'package:lol_app/model/champion.dart';
import 'package:lol_app/model/skin.dart';
class ChampionDetails extends StatelessWidget{
  final Champion champion;

  ChampionDetails({this.champion});

  @override
  Widget build(BuildContext context) {
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
      body: Column(
        children: <Widget>[
          Expanded(child: _championSkins())
        ],
      ),
    );
  }
  
  Widget _championSkins(){
    return PageView(
      scrollDirection: Axis.horizontal,
      children: champion.skins.map((skin) => Image.network('$skinImagePath${champion.name}_${skin.skinNumber.toString()}.jpg',width: 200,height: 200,)).toList(),
    );
  }

  Widget _skin(Skin skin){
    return Stack(
      children: <Widget>[

      ],
    );
  }
}

//child: Column(
//children: champion.skills.map((skill) => Image.network('$skillsImagePath${skill.url}',width: 100,height: 100,)).toList(),
//)