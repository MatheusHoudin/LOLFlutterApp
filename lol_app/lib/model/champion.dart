import 'package:lol_app/model/skin.dart';
import 'package:lol_app/model/skill.dart';
class Champion{
  String name;
  String lore;
  List<String> tags;
  List<Skin> skins;
  List<Skill> skills;

  Champion({this.name,this.skins,this.lore,this.tags,this.skills});
}