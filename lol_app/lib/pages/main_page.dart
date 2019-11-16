import 'package:flutter/material.dart';
import 'package:lol_app/constants/colors.dart';
import 'package:lol_app/widgets/champion_rotation.dart';
import 'package:lol_app/constants/strings.dart';
class MainPage extends StatelessWidget{
  final List<String> rotationChampions = [
    'Aatrox',
    'Anivia',
    'Heimerdinger',
    'Vladimir',
    'Viktor',
    'Elise'
  ];
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        color: Colors.grey,
        child: Column(
          children: <Widget>[
            _championRotation(context),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: champions.length,
                itemBuilder: (BuildContext context, int index){
                  return Image.network('$squareImagePath${champions[index]}.png',width: 100,height: 100,);
                },
              ),
            )
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