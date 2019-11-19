import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lol_app/constants/strings.dart';
import 'package:lol_app/pages/champion_details.dart';
class ChampionsList extends StatelessWidget{
  final List<String> champions = [
    'Aatrox',
    'Ahri',
    'Akali',
    'Alistar',
    'Amumu',
    'Anivia',
    'Annie',
    'Ashe',
    'AurelionSol',
    'Azir',
    'Bard',
    'Blitzcrank',
    'Brand',
    'Braum',
    'Caitlyn',
    'Camille',
    'Cassiopeia',
    'Chogath',
    'Corki',
    'Darius',
    'Diana',
    'DrMundo',
    'Draven',
    'Ekko',
    'Elise',
    'Evelynn',
    'Ezreal',
    'Fiddlesticks',
    'Fiora',
    'Fizz',
    'Galio',
    'Gangplank',
    'Garen',
    'Gnar',
    'Gragas',
    'Graves',
    'Hecarim',
    'Heimerdinger',
    'Illaoi',
    'Irelia',
    'Ivern',
    'Janna',
    'JarvanIV',
    'Jax',
    'Jayce',
    'Jhin',
    'Jinx',
    'Kaisa',
    'Kalista',
    'Karma',
    'Karthus',
    'Kassadin',
    'Katarina',
    'Kayle',
    'Kayn',
    'Kennen',
    'Khazix',
    'Kindred',
    'Kled',
    'KogMaw',
    'Leblanc',
    'LeeSin',
    'Leona',
    'Lissandra',
    'Lucian',
    'Lulu',
    'Lux',
    'Malphite',
    'Malzahar',
    'Maokai',
    'MasterYi',
    'MissFortune',
    'Mordekaiser',
    'Morgana',
    'Nami',
    'Nasus',
    'Nautilus',
    'Neeko',
    'Nidalee',
    'Nocturne',
    'Nunu',
    'Olaf',
    'Orianna',
    'Ornn',
    'Pantheon',
    'Poppy',
    'Pyke',
    'Qiyana',
    'Quinn',
    'Rakan',
    'Rammus',
    'RekSai',
    'Renekton',
    'Rengar',
    'Riven',
    'Rumble',
    'Ryze',
    'Sejuani',
    'Senna',
    'Shaco',
    'Shen',
    'Shyvana',
    'Singed',
    'Sion',
    'Sivir',
    'Skarner',
    'Sona',
    'Soraka',
    'Swain',
    'Sylas',
    'Syndra',
    'TahmKench',
    'Taliyah',
    'Talon',
    'Taric',
    'Teemo',
    'Thresh',
    'Tristana',
    'Trundle',
    'Tryndamere',
    'TwistedFate',
    'Twitch',
    'Udyr',
    'Urgot',
    'Varus',
    'Vayne',
    'Veigar',
    'Velkoz',
    'Vi',
    'Viktor',
    'Vladimir',
    'Volibear',
    'Warwick',
    'MonkeyKing',
    'Xayah',
    'Xerath',
    'XinZhao',
    'Yasuo',
    'Yorick',
    'Yuumi',
    'Zac',
    'Zed',
    'Ziggs',
    'Zilean',
    'Zoe',
    'Zyra',
  ];
  StaggeredTile championTile = StaggeredTile.count(1, 1);
  StaggeredTile titleSectionTile = StaggeredTile.count(3, 0.5);
  List<StaggeredTile> staggeredTiles = List<StaggeredTile>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.1,
          alignment: Alignment.center,
          child: SectionTitle(),
        ),
        Expanded(
          child: StaggeredGridView.count(
            crossAxisCount: 3,
            staggeredTiles: staggeredTiles,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: _championsList(context),
          ),
        )
      ],
    );
  }

  Widget SectionTitle(){
    return Text(
      'Campeões',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20
      ),
    );
  }

  Widget _championImage(String championName,BuildContext context){
    return GestureDetector(
      onTap: (){
        print("clicked");
        Navigator.push(context,MaterialPageRoute(builder: (_) => ChampionDetails(championName: championName,)));
      },
      child: Hero(
        tag: championName,
        child: Image.network('$squareImagePath$championName.png'),
      ),
    );
  }

  List<Widget> _championsList(BuildContext context){
    List<Widget> widgets = [];
    for(String champion in champions){
      staggeredTiles.add(championTile);
      widgets.add(_championImage(champion, context));
    }
    return widgets;
  }

}