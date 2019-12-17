import 'package:flutter/material.dart';
import 'package:lol_app/constants/strings.dart';
import 'package:lol_app/model/champion.dart';
import 'package:lol_app/model/skin.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:lol_app/constants/colors.dart';
import 'package:lol_app/model/skill.dart';
class ChampionDetails extends StatefulWidget{
  final Champion champion;

  ChampionDetails({this.champion});

  @override
  _ChampionDetailsState createState() => _ChampionDetailsState();
}

class _ChampionDetailsState extends State<ChampionDetails> {
  int currentSkinPage;
  int selectedSkill;
  List<String> skillKeys;

  @override
  void initState() {
    super.initState();
    currentSkinPage = 0;
    selectedSkill = 0;
    skillKeys = [
      'P',
      'Q',
      'W',
      'E',
      'R'
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Hero(
            tag: widget.champion.name,
            child: Image.network('$squareImagePath${widget.champion.name}.png',),
          ),
        ),
        backgroundColor: appBarColor,
        title: Text(widget.champion.name),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _championSkins(),
              _championDescription(),
              _skills(),
              SizedBox(
                height: 30,
                child: Padding(
                  padding: EdgeInsets.only(left: 8,right: 8),
                  child: Divider(color: textColor,height: 2,),
                ),
              ),
              _skillDescription(widget.champion.skills[selectedSkill])
            ],
          ),
        ),
      ),
    );
  }

  Widget _championSkins(){
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          PageView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            onPageChanged: (page) {
              setState(() {
                this.currentSkinPage = page;
              });
            },
            children: widget.champion.skins.map((skin) => _skin(skin)).toList(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: DotsIndicator(
                dotsCount: widget.champion.skins.length,
                position: currentSkinPage.toDouble(),
                axis: Axis.horizontal,
                decorator: DotsDecorator(
                  color: Colors.transparent,
                  activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.black,width: 2)),
                  activeColor: appBarTextColor,
                  activeSize: Size(14, 14),
                  size: Size.square(10),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: textColor,width: 2)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _skin(Skin skin){
    return Card(
      color: cardColor,
      elevation: 2,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4))
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(2),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                        image: NetworkImage('$skinImagePath${widget.champion.name}_${skin.skinNumber.toString()}.jpg')
                    )
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 2,top: 2),
                  child: skin.price != null ? _price('assets/images/rp.png',skin.price)
                  : _championPrice(),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      skin.skinName,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _championPrice(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _price('assets/images/blue_essence.png', widget.champion.blueEssencePrice),
        _price('assets/images/rp.png', widget.champion.rpPrice)
      ],
    );
  }
  
  Widget _price(String iconPath,int price){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Image.asset(iconPath,width: 40,height: 40,),
        SizedBox(width: 10,),
        Text(
          price.toString(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold
          ),
        )
      ],
    );
  }

  Widget _championDescription(){
    return Padding(
      padding: EdgeInsets.only(top: 8,bottom: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: widget.champion.tags.map((tag) => Image.asset('assets/images/${tag.toLowerCase()}.png',width: 40,height: 40,)).toList(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8,right: 8),
            child: Text(
              'DESCRIPTION',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: titleColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 8,right: 8),
            child: Text(
              widget.champion.lore,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16,
                color: textColor
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _skills(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      children: widget.champion.skills.asMap().map((index,skill) => MapEntry(index,_championSkillImage(skill,index))).values.toList(),
    );
  }

  Widget _championSkillImage(Skill skill,int index){
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: (){
            setState(() {
              selectedSkill = index;
            });
          },
          child: Container(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width * 0.15,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: selectedSkill == index ? Colors.amber : Colors.transparent
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage('$skillsImagePath${skill.url}')
              )
            ),
          ),
        ),
        SizedBox(height: 10,),
        Text(
          skillKeys[index],
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
      ],
    );
  }

  Widget _skillDescription(Skill skill){
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            skill.name.toUpperCase(),
            textAlign: TextAlign.left,
            style: TextStyle(
              color: titleColor,
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),
          ),
          SizedBox(height: 10,),
          Text(
            skill.description,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 14,
              color: textColor
            ),
          )
        ],
      ),
    );
  }
}
