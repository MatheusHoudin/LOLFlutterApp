import 'package:flutter/material.dart';
import 'package:lol_app/constants/strings.dart';
import 'package:lol_app/pages/champion_details.dart';
class ChampionRotation extends StatelessWidget{
  final String championName;

  ChampionRotation({this.championName});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12))
      ),
      child: InkWell(
        onTap: () => Navigator.push(context,MaterialPageRoute(builder: (_) => ChampionDetails(championName: championName,))),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.4,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 8,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('$splashPath${championName}_0.jpg'),
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
                    championName,
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