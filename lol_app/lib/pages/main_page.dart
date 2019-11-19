import 'package:flutter/material.dart';
import 'package:lol_app/constants/colors.dart';
import 'package:lol_app/widgets/champion_rotation.dart';
import 'package:lol_app/widgets/champions_list.dart';
class MainPage extends StatelessWidget{
  final List<String> rotationChampions = [
    'Aatrox',
    'Anivia',
    'Heimerdinger',
    'Vladimir',
    'Viktor',
    'Elise'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(10),
          child: Image.asset('assets/images/logo_lol.jpg'),
        ),
        title: Text(
          'LOL',
          style: TextStyle(
            color: textColor
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            _championRotation(context),
            Expanded(child: ChampionsList())
          ],
        )
      ),
    );
  }

  Widget _championRotation(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'Rotação Semanal',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.2,
              child: ListView.builder(
                itemCount: rotationChampions.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index){
                  return ChampionRotation(championName: rotationChampions[index],);
                },
              ),
            ),
          )
        ],
      ),
    );
  }


}