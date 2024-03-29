import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lol_app/constants/strings.dart';
import 'package:lol_app/pages/champion_details.dart';
import 'package:lol_app/database/database.dart';
import 'package:lol_app/model/champion.dart';
class ChampionsList extends StatelessWidget{
  final Database database;
  final StaggeredTile championTile = StaggeredTile.count(1, 1);
  final List<StaggeredTile> staggeredTiles = List<StaggeredTile>();

  ChampionsList({this.database});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: SectionTitle(),
        ),
        Expanded(
          child: StaggeredGridView.count(
            crossAxisCount: 3,
            staggeredTiles: staggeredTiles,
            children: _championsList(context),
          ),
        )
      ],
    );
  }

  Widget SectionTitle(){
    return Text(
      'Champions',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 20
      ),
    );
  }

  Widget _championImage(Champion champion,BuildContext context){
    return GestureDetector(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (_) => ChampionDetails(champion: champion,)));
      },
      child: Hero(
        tag: champion.name,
        child: Image.network('$squareImagePath${champion.name}.png',),
      ),
    );
  }

  List<Widget> _championsList(BuildContext context){
    List<Widget> widgets = [];
    for(Champion champion in database.champions){
      staggeredTiles.add(championTile);
      widgets.add(_championImage(champion, context));
    }
    return widgets;
  }

}