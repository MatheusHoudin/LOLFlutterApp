import 'package:flutter/material.dart';
import 'package:lol_app/constants/colors.dart';
import 'package:lol_app/widgets/champion_rotation.dart';
import 'package:lol_app/widgets/champions_list.dart';
import 'package:lol_app/database/database.dart';
class MainPage extends StatelessWidget{
  final Database database;

  MainPage({this.database});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: appBarColor,
        leading: Padding(
          padding: EdgeInsets.all(10),
          child: Image.asset('assets/images/logo_lol.jpg'),
        ),
        title: Text(
          'Champions Gallery',
          style: TextStyle(
            color: appBarTextColor
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          _championRotation(context),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 4,right: 4),
              child: ChampionsList(database: database,),
            ),
          )
        ],
      ),
    );
  }

  Widget _championRotation(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'Free Champion Rotation',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: ListView.builder(
              itemCount: database.rotationChampions.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index){
                return ChampionRotation(champion: database.rotationChampions[index],);
              },
            ),
          )
        ],
      ),
    );
  }


}