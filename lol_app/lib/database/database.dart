import 'package:lol_app/model/champion.dart';
import 'package:lol_app/model/skin.dart';
import 'package:lol_app/model/skill.dart';
class Database{
  List<Champion> champions;

  Database(){
    getChampions();
  }
//  final List<String> champions = [
//    'Azir',
//    'Zilean',
//    'Brand',
//    'Anivia',
//    'Gnar',
//    'Braum',
//    'Caitlyn',
//    'MasterYi',
//    'Kayn',
//    'Zed'
//  ];
  void getChampions(){
    Champion azir = Champion(
        name: 'Azir',
        lore: 'Azir was a mortal emperor of Shurima'
        ' in a far distant age, a proud man who stood at the cusp of immortality. His '
        'hubris saw him betrayed and murdered at the moment of his greatest triumph, '
        'but now, millennia later, he has been reborn as an Ascended being of immense power.'
        ' With his buried city risen from the sand, Azir seeks to restore Shurima to its former glory.',
        tags: ['Mage','Marksman'],
        skins: [Skin(skinName: 'Default',skinNumber: 0),Skin(skinName: 'Galactic Azir',skinNumber: 1),
        Skin(skinNumber: 2,skinName: 'Gravelord Azir'),Skin(skinNumber: 3,skinName: 'SKT T1 Azir'),Skin(skinNumber: 4,skinName: 'Warring Kingdoms Azir')],
        skills: [Skill(url: 'passive/Azir_Passive.png',name: 'Shurima\'s Legacy',description: 'Azir can summon the Disc of the Sun from the ruins of allied or enemy turrets.'),
        Skill(url: 'spell/AzirQWrapper.png',name: 'Conquering Sands',description: 'Azir sends all Sand Soldiers towards a location. Sand Soldiers deal magic damage to enemies they pass through and apply a slow for 1 second.'),
        Skill(url: 'spell/AzirW.png',name: 'Arise!',description: 'Azir summons a Sand Soldier to attack nearby targets for him, replacing his basic attack against targets within the soldier\'s range. Their attacks deal magic damage to enemies in a line. Arise! also passively grants attack speed to Azir and his Sand Soldiers.'),
        Skill(url: 'spell/AzirEWrapper.png',name: 'Shifting Sands',description: 'Azir shields himself briefly and dashes to one of his Sand Soldiers, damaging enemies. If he hits an enemy champion, he instantly readies a new Sand Soldier for deployment and halts his dash.'),
        Skill(url: 'spell/AzirR.png',name: 'Emperor\'s Divide',description: 'Azir summons a wall of soldiers which charge forward, knocking back and damaging enemies.')]);

    Champion zilean = Champion(
      name: 'Zilean',
      lore: 'Once a powerful Icathian mage, Zilean became obsessed with the passage of time after '
          'witnessing his homeland\'s destruction by the Void. Unable to spare even a minute to grieve'
          ' the catastrophic loss, he called upon ancient temporal magic to divine all possible outcomes.'
          ' Having become functionally immortal, Zilean now drifts through the past, present, and future,'
          ' bending and warping the flow of time around him, always searching for that elusive moment that'
          ' will turn back the clock and undo Icathia\'s destruction.',
      tags: ['Support','Mage'],
      skins: [Skin(skinName: 'default',skinNumber: 0),Skin(skinName: 'Old Saint Zilean',skinNumber: 1),Skin(skinName: 'Groovy Zilean',skinNumber: 2),
      Skin(skinName: 'Shurima Desert Zilean',skinNumber: 3),Skin(skinName: 'Time Machine Zilean',skinNumber: 4),Skin(skinName: 'Blood Moon Zilean',skinNumber: 5)],
      skills: [Skill(url: 'passive/Zilean_Passive.png',name: 'Time in a Bottle',description: 'Zilean stores time as Experience. When he has enough Experience to finish an ally\'s level, he can right-click them to impart it. Zilean receives as much Experience as he gives. Cannot be used in combat.'),
      Skill(url: 'spell/ZileanQ.png',name: 'Time Bomb',description: 'Tosses a bomb to target area that sticks to units that come near it (prioritizes Champions). It detonates after 3 seconds, dealing area of effect damage. If a Time Bomb is detonated early by another Time Bomb, it also stuns enemies.'),
      Skill(url: 'spell/ZileanW.png',name: 'Rewind',description: 'Zilean can prepare himself for future confrontations, reducing the cooldowns of his other basic abilities.'),
      Skill(url: 'spell/TimeWarp.png',name: 'Time Warp',description: 'Zilean bends time around any unit, decreasing an enemy\'s Movement Speed or increasing an ally\'s Movement Speed for a short time.'),
      Skill(url: 'spell/ChronoShift.png',name: 'ChronoShift',description: 'Zilean places a protective time rune on an allied champion, teleporting the champion back in time if they take lethal damage.')]
    );

    Champion brand = Champion(
      name: 'Brand',
      lore: 'Once a tribesman of the icy Freljord named Kegan Rodhe, the creature known as Brand is a lesson'
          ' in the temptation of greater power. Seeking one of the legendary World Runes, Kegan betrayed his '
          'companions and seized it for himself—and, in an instant, the man was no more. His soul burned away,'
          ' his body a vessel of living flame, Brand now roams Valoran in search of other Runes, swearing revenge'
          ' for wrongs he could never possibly have suffered in a dozen mortal lifetimes.',
      tags: ['Mage'],
      skins: [Skin(skinName: 'default',skinNumber: 0),Skin(skinName: 'Apocalyptic Brand',skinNumber: 1),Skin(skinName: 'Vandal Brand',skinNumber: 2),
      Skin(skinName: 'Cryocore Brand',skinNumber: 3),Skin(skinName: 'Zombie Brand',skinNumber: 4),Skin(skinName: 'Spirit Fire Brand',skinNumber: 5),
      Skin(skinName: 'Battle Boss Brand',skinNumber: 6),Skin(skinName: 'Arclight Brand',skinNumber: 7)],
      skills: [Skill(url: 'passive/BrandP.png',name: 'Blaze',description: 'Brand\'s spells light his targets ablaze, dealing damage over 4 seconds, stacking up to 3 times. If Brand kills an enemy while it is ablaze he regains mana. When Blaze reaches max stacks on a Champion or large monster, it becomes unstable. It detonates in 2 seconds, applying spell effects and dealing massive damage in an area around the victim.'),
      Skill(url: 'spell/BrandQ.png',name: 'Sear',description: 'Brand launches a ball of fire forward that deals magic damage. If the target is ablaze, Sear will stun the target for 1.5 seconds.'),
      Skill(url: 'spell/BrandW.png',name: 'Pillar of Flame',description: 'After a short delay, Brand creates a Pillar of Flame at a target area, dealing magic damage to enemy units within the area. Units that are ablaze take an additional 25% damage.'),
      Skill(url: 'spell/BrandE.png',name: 'Conflagration',description: 'Brand conjures a powerful blast at his target, dealing magic damage to them. If the target is ablaze, Conflagration spreads to nearby enemies.'),
      Skill(url: 'spell/BrandR.png',name: 'Pyroclasm',description: 'Brand unleashes a devastating torrent of fire, dealing magic damage each time it bounces, up to 5 bounces. Bounces prioritize stacking Blaze to max on Champions. If a target is ablaze, Pyroclasm will briefly slow them.')]
    );

    Champion anivia = Champion(
        name: 'Anivia',
        lore: 'Anivia is a benevolent winged spirit who endures endless cycles of life, death,'
            ' and rebirth to protect the Freljord. A demigod born of unforgiving ice and bitter winds,'
            ' she wields those elemental powers to thwart any who dare disturb her homeland. Anivia guides'
            ' and protects the tribes of the harsh north, who revere her as a symbol of hope, and a portent'
            ' of great change. She fights with every ounce of her being, knowing that through her sacrifice,'
            ' her memory will endure, and she will be reborn into a new tomorrow.',
        tags: ['Mage','Support'],
        skins: [Skin(skinName: 'default',skinNumber: 0),Skin(skinName: 'Team Spirit Anivia',skinNumber: 1),Skin(skinName: 'Bird of Prey Anivia',skinNumber: 2),
          Skin(skinName: 'Noxus Hunter Anivia',skinNumber: 3),Skin(skinName: 'Hextech Anivia',skinNumber: 4),Skin(skinName: 'Blackfrost Anivia',skinNumber: 5),
          Skin(skinName: 'Prehistoric Anivia',skinNumber: 6),Skin(skinName: 'Festival Queen Anivia',skinNumber: 7),Skin(skinName: 'Papercraft Anivia',skinNumber: 8)],
        skills: [Skill(url: 'passive/Anivia_P.png',name: 'Rebirth',description: 'Upon dying, Anivia will revert into an egg. If the egg can survive for six seconds, she is gloriously reborn.'),
          Skill(url: 'spell/FlashFrost.png',name: 'Flash Frost',description: 'Anivia brings her wings together and summons a sphere of ice that flies towards her opponents, chilling and damaging anyone in its path. When the sphere explodes it does moderate damage in a radius, stunning anyone in the area.'),
          Skill(url: 'spell/Crystallize.png',name: 'Crystallize',description: 'Anivia condenses the moisture in the air into an impassable wall of ice to block all movement. The wall only lasts a short duration before it melts.'),
          Skill(url: 'spell/Frostbite.png',name: 'Frostbite',description: 'With a flap of her wings, Anivia blasts a freezing gust of wind at her target, dealing a low amount of damage. If the target was recently stunned by Flash Frost or damaged by a fully formed Glacial Storm, the damage they take is doubled.'),
          Skill(url: 'spell/GlacialStorm.png',name: 'Glacial Storm',description: 'Anivia summons a driving rain of ice and hail to damage her enemies and slow their advance.')]
    );

    Champion gnar = Champion(
        name: 'Gnar',
        lore: 'Gnar is a primeval yordle whose playful antics can erupt into a toddler\'s outrage in an instant,'
            ' transforming him into a massive beast bent on destruction. Frozen in True Ice for millennia, the curious'
            ' creature broke free and now hops about a changed world he sees as exotic and wondrous. Delighted by danger,'
            ' Gnar flings whatever he can at his enemies, be it his bonetooth boomerang, or a nearby building.',
        tags: ['Fighter','Tank'],
        skins: [Skin(skinName: 'default',skinNumber: 0),Skin(skinName: 'Dino Gnar',skinNumber: 1),Skin(skinName: 'Gentleman Gnar',skinNumber: 2),
          Skin(skinName: 'Snow Day Gnar',skinNumber: 3),Skin(skinName: 'El León Gnar',skinNumber: 4),Skin(skinName: 'Super Galaxy Gnar',skinNumber: 5),
          Skin(skinName: 'SSG Gnar',skinNumber: 6)],
        skills: [Skill(url: 'passive/Gnar_Passive.png',name: 'Rage Gene',description: 'While in combat Gnar generates Rage. At maximum Rage his next ability will transform him into Mega Gnar, granting increased survivability and access to new spells.'),
          Skill(url: 'spell/GnarQ.png',name: 'Boomerang Throw / Boulder Toss',description: 'Gnar throws a boomerang that damages and slows enemies it hits before returning to him. If he catches the boomerang its cooldown is reduced. Mega Gnar instead throws a boulder that stops on the first unit hit, damaging and slowing everything nearby. It can then be picked up to reduce the cooldown.'),
          Skill(url: 'spell/GnarW.png',name: 'Hyper / Wallop',description: 'Gnar\'s attacks and spells hype him up, dealing bonus damage and granting him Movement Speed. Mega Gnar is too enraged to be hyper and instead can rear up on his hind legs and smash down on the area in front of him, stunning enemies in an area.'),
          Skill(url: 'spell/GnarE.png',name: 'Hop / Crunch',description: 'Gnar leaps to a location and bounces off the head of any unit he lands on, traveling further. Mega Gnar is too large to bounce and instead lands with earth-shattering force, dealing damage in an area around him.'),
          Skill(url: 'spell/GnarR.png',name: 'GNAR!',description: 'Mega Gnar throws everything around him in a chosen direction, dealing damage and slowing them.  Any enemy that hits a wall is stunned and takes bonus damage.')]
    );

    Champion braum = Champion(
        name: 'Braum',
        lore: 'Blessed with massive biceps and an even bigger heart, Braum is a beloved hero of the Freljord.'
            ' Every mead hall north of Frostheld toasts his legendary strength, said to have felled a forest of'
            ' oaks in a single night, and punched an entire mountain into rubble. Bearing an enchanted vault door'
            ' as his shield, Braum roams the frozen north sporting a mustachioed smile as big as his muscles—a true'
            ' friend to all those in need.',
        tags: ['Support','Tank'],
        skins: [Skin(skinName: 'default',skinNumber: 0),Skin(skinName: 'Dragonslayer Braum',skinNumber: 1),Skin(skinName: 'El Tigre Braum',skinNumber: 2),
          Skin(skinName: 'Braum Lionheart',skinNumber: 3),Skin(skinName: 'Santa Braum',skinNumber: 4),Skin(skinName: 'Mafia Braum',skinNumber: 5),],
        skills: [Skill(url: 'passive/Braum_Passive.png',name: 'Concussive Blows',description: 'Braum adds stacks of Concussive Blows to enemies with basic attacks or Winter\'s Bite. He and his allies continue to add stacks with basic attacks, at 4 stacks their target will be stunned.'),
          Skill(url: 'spell/BraumQ.png',name: 'Winter\'s Bite',description: 'Braum propels freezing ice from his shield, slowing and dealing magic damage. Applies a stack of Concussive Blows.'),
          Skill(url: 'spell/BraumW.png',name: 'Stand Behind Me',description: 'Braum leaps to a target allied champion or minion. On arrival, Braum and the ally gain Armor and Magic Resist for a few seconds.'),
          Skill(url: 'spell/BraumE.png',name: 'Unbreakable',description: 'Braum raises his shield in a direction for several seconds, intercepting all projectiles causing them to hit him and be destroyed. He negates the damage of the first attack completely and reduces the damage of all subsequent attacks from this direction.'),
          Skill(url: 'spell/BraumRWrapper.png',name: 'Glacial Fissure',description: 'Braum slams the ground, knocking up enemies nearby and in a line in front of him. A fissure is left along the line that slows enemies.')]
    );

    Champion caitlyn = Champion(
        name: 'Caitlyn',
        lore: 'Renowned as its finest peacekeeper, Caitlyn is also Piltover\'s best shot at ridding the city of its elusive criminal elements.'
            ' She is often paired with Vi, acting as a cool counterpoint to her partner\'s more impetuous nature. Even though she carries a'
            ' one-of-a-kind hextech rifle, Caitlyn\'s most powerful weapon is her superior intellect, allowing her to lay elaborate traps for'
            ' any lawbreakers foolish enough to operate in the City of Progress.',
        tags: ['Marksman',],
        skins: [Skin(skinName: 'default',skinNumber: 0),Skin(skinName: 'Resistance Caitlyn',skinNumber: 1),Skin(skinName: 'Sheriff Caitlyn',skinNumber: 2),
          Skin(skinName: 'Safari Caitlyn',skinNumber: 3),Skin(skinName: 'Arctic Warfare Caitlyn',skinNumber: 4),Skin(skinName: 'Officer Caitlyn',skinNumber: 5),
          Skin(skinName: 'Headhunter Caitlyn',skinNumber: 6),Skin(skinName: 'Lunar Wraith Caitlyn',skinNumber: 10),Skin(skinName: 'Pulsefire Caitlyn',skinNumber: 11),
          Skin(skinName: 'Pool Party Caitlyn',skinNumber: 13),Skin(skinName: 'Arcade Caitlyn',skinNumber: 19),Skin(skinName: 'Arcade Caitlyn Prestige Edition',skinNumber: 20)],
        skills: [Skill(url: 'passive/Caitlyn_Headshot.png',name: 'Headshot',description: 'Every few basic attacks, or against a target she has trapped or netted, Caitlyn will fire a headshot dealing bonus damage that scales with her critical strike chance. On trapped or netted targets, Caitlyn\'s Headshot attack range is doubled.'),
          Skill(url: 'spell/CaitlynPiltoverPeacemaker.png',name: 'Piltover Peacemaker',description: 'Caitlyn revs up her rifle for 1 second to unleash a penetrating shot that deals physical damage (deals less damage to subsequent targets).'),
          Skill(url: 'spell/CaitlynYordleTrap.png',name: 'Yordle Snap Trap',description: 'Caitlyn sets a trap to find sneaky yordles. When sprung, the trap reveals and immobilizes the enemy champion for 1.5 seconds, granting Caitlyn an empowered Headshot.'),
          Skill(url: 'spell/CaitlynEntrapment.png',name: '90 Caliber Net',description: 'Caitlyn fires a heavy net to slow her target. The recoil knocks Caitlyn back.'),
          Skill(url: 'spell/CaitlynAceintheHole.png',name: 'Ace in the Hole',description: 'Caitlyn takes time to line up the perfect shot, dealing massive damage to a single target at a huge range. Enemy champions can intercept the bullet for their ally.')]
    );

    Champion masterYi = Champion(
        name: 'MasterYi',
        lore: 'Master Yi has tempered his body and sharpened his mind, so that thought and action have become almost as one.'
            ' Though he chooses to enter into violence only as a last resort, the grace and speed of his blade ensures resolution'
            ' is always swift. As one of the last living practitioners of the Ionian art of Wuju, Yi has devoted his life to continuing'
            ' the legacy of his people—scrutinizing potential new disciples with the Seven Lenses of Insight to identify the most worthy'
            ' among them.',
        tags: ['Assassin','Fighter'],
        skins: [Skin(skinName: 'default',skinNumber: 0),Skin(skinName: 'Assassin Master Yi',skinNumber: 1),Skin(skinName: 'Chosen Master Yi',skinNumber: 2),
          Skin(skinName: 'Ionia Master Yi',skinNumber: 3),Skin(skinName: 'Samurai Yi',skinNumber: 4),Skin(skinName: 'Headhunter Master Yi',skinNumber: 5),
          Skin(skinName: 'PROJECT: Yi',skinNumber: 9),Skin(skinName: 'Cosmic Blade Master Yi',skinNumber: 10),Skin(skinName: 'Eternal Sword Yi',skinNumber: 11),
          Skin(skinName: 'Snow Man Yi',skinNumber: 17)],
        skills: [Skill(url: 'passive/MasterYi_Passive1.png',name: 'Double Strike',description: 'Every few consecutive basic attack, Master Yi strikes twice.'),
          Skill(url: 'spell/AlphaStrike.png',name: 'Alpha Strike',description: 'Master Yi teleports across the battlefield with blinding speed, dealing physical damage to multiple units in his path, while simultaneously becoming untargetable. Alpha Strike can critically strike and deals bonus physical damage to monsters. Basic attacks reduce Alpha Strike\'s cooldown.'),
          Skill(url: 'spell/Meditate.png',name: 'Meditate',description: 'Master Yi rejuvenates his body by focus of mind, restoring Health and taking reduced damage for a short time. In addition, Master Yi will gain stacks of Double Strike and pause the remaining duration on Wuju Style and Highlander for each second he channels.'),
          Skill(url: 'spell/WujuStyle.png',name: 'Wuju Style',description: 'Grants bonus true damage on basic attacks.'),
          Skill(url: 'spell/Highlander.png',name: 'Highlander',description: 'Master Yi moves with unparalleled agility, temporarily increasing his Movement and Attack Speeds as well as making him immune to all slowing effects. While active, Champion kills or assists extend Highlander\'s duration. Passively reduces cooldown for his other abilities on a kill or assist.')]
    );

    Champion kayn = Champion(
        name: 'Kayn',
        lore: 'A peerless practitioner of lethal shadow magic, Shieda Kayn battles to achieve his true destiny—to one day lead the Order'
            ' of Shadow into a new era of Ionian supremacy. He wields the sentient darkin weapon Rhaast, undeterred by its creeping'
            ' corruption of his body and mind. There are only two possible outcomes: either Kayn bends the weapon to his will...'
            ' or the malevolent blade consumes him completely, paving the way for the destruction of all Runeterra.',
        tags: ['Assassin','Fighter'],
        skins: [Skin(skinName: 'default',skinNumber: 0),Skin(skinName: 'Soulhunter Kayn',skinNumber: 1),Skin(skinName: 'Odyssey Kayn',skinNumber: 2)],
        skills: [Skill(url: 'passive/Kayn_Passive_Primary.png',name: 'The Darkin Scythe',description: 'Kayn wields an ancient weapon and fights Rhaast, the darkin within it, for control. Either the Darkin will triumph, or Kayn will master Rhaast and become the Shadow Assassin. Darkin: Heal for a percentage of spell damage dealt to champions. Shadow Assassin: For the first few seconds in combat with enemy champions, deal bonus damage.'),
          Skill(url: 'spell/KaynQ.png',name: 'Reaping Slash',description: 'Kayn dashes, then slashes. Both deal damage.'),
          Skill(url: 'spell/KaynW.png',name: 'Blade\'s Reach',description: 'Kayn damages and slows targets in a line.'),
          Skill(url: 'spell/KaynE.png',name: 'Shadow Step',description: 'Kayn can walk through terrain.'),
          Skill(url: 'spell/KaynR.png',name: 'Umbral Trespass',description: 'Kayn hides in an enemy\'s body, dealing massive damage when he bursts out.')]
    );

    Champion zed = Champion(
        name: 'Zed',
        lore: 'Utterly ruthless and without mercy, Zed is the leader of the Order of Shadow, an organization he created with the intent'
            ' of militarizing Ionia\'s magical and martial traditions to drive out Noxian invaders. During the war, desperation led him'
            ' to unlock the secret shadow form—a malevolent spirit magic as dangerous and corrupting as it is powerful. Zed has mastered'
            ' all of these forbidden techniques to destroy anything he sees as a threat to his nation, or his new order.',
        tags: ['Assassin'],
        skins: [Skin(skinName: 'default',skinNumber: 0),Skin(skinName: 'Shockblade Zed',skinNumber: 1),Skin(skinName: 'SKT T1 Zed',skinNumber: 2),
          Skin(skinName: 'PROJECT: Zed',skinNumber: 3),Skin(skinName: 'Championship Zed',skinNumber: 10),Skin(skinName: 'Death Sworn Zed',skinNumber: 11),
          Skin(skinName: 'Galaxy Slayer Zed',skinNumber: 13)],
        skills: [Skill(url: 'passive/shadowninja_P.png',name: 'Contempt for the Weak',description: 'Zed\'s basic attacks against low health targets deals bonus Magic Damage. This effect can only occur once every few seconds on the same target.'),
          Skill(url: 'spell/ZedQ.png',name: 'Razor Shuriken',description: 'Zed and his shadows throw their shurikens. Each shuriken deals damage to every enemy hit.'),
          Skill(url: 'spell/ZedW.png',name: 'Living Shadow',description: 'Passive: Zed gains energy whenever he and his shadows strike an enemy with the same ability. Energy can only be gained once per cast ability. Active: Zed\'s shadow dashes forward, remaining in place for a few seconds. Reactivating Living Shadow will cause Zed to switch positions with this shadow.'),
          Skill(url: 'spell/ZedE.png',name: 'Shadow Slash',description: 'Zed and his shadows slash, dealing damage to nearby enemies.'),
          Skill(url: 'spell/ZedR.png',name: 'Death Mark',description: 'Zed becomes untargetable and dashes to an enemy champion, marking them. After 3 seconds the mark triggers, repeating a portion of all the damage Zed dealt to the target while they were marked.')]
    );

    champions = [
      azir,
      zilean,
      brand,
      anivia,
      gnar,
      braum,
      caitlyn,
      masterYi,
      kayn,
      zed
    ];
  }
}