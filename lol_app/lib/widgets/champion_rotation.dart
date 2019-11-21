import 'package:flutter/material.dart';
import 'package:lol_app/constants/strings.dart';
import 'package:lol_app/model/champion.dart';
import 'package:lol_app/pages/champion_details.dart';
class ChampionRotation extends StatelessWidget{
  final Champion champion;

  ChampionRotation({this.champion});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12))
      ),
      child: InkWell(
        onTap: () => Navigator.push(context,MaterialPageRoute(builder: (_) => ChampionDetails(champion: champion,))),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.4,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 8,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('$splashPath${champion.name}_0.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8))
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    champion.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}