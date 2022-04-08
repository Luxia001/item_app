import 'package:get/get.dart';
import 'package:item_app/pages/home/main_weapon_page.dart';
import 'package:item_app/pages/weapon/AmosBow.dart';
import 'package:item_app/pages/weapon/DodocoTales.dart';
import 'package:item_app/pages/weapon/LostPrayertotheSacredWinds.dart';
import 'package:item_app/pages/weapon/Rust.dart';
import 'package:item_app/pages/weapon/TheBlackSword.dart';
import 'package:item_app/pages/weapon/VortexVanquisher.dart';
import 'package:item_app/pages/weapon/WolfsGravestone.dart';
import 'package:item_app/utils/dimension.dart';
import 'package:item_app/widgets/app_wolfsGravestone.dart';

import '../pages/weapon/poppular_weapon_detail.dart';
import '../pages/weapon/AmosBow.dart';
import '../pages/weapon/Rust.dart';

class RouteHelper{
  static const String initial = "/";
  static const popularWeapon="/poppular_weapon";
  static const amossBow="/AmosBow";
  static const rustBow="/Rust";
  static const dodocoTales="/DodocoTales";
  static const theBlackSword="/TheBlackSword";
  static const lostPrayer="/LostPrayer";
  static const wolf="/WolfsGravestone";
  static const vortex="/VortexVanquisher";

  static String getPopularWeapon()=>'$popularWeapon';
  static String getamossBow()=>'$amossBow';
  static String getlostPrayer()=>'$lostPrayer';
  static String getwolfsGravestone()=>'$wolf';
  static String getvortexVanquisher()=>'$vortex';
  static String getRustBow()=>'$rustBow';
  static String getDodocoTales()=>'$dodocoTales';
  static String getTheBlackSword()=>'$theBlackSword';


  static List<GetPage> routes =[
    GetPage(name: "/", page: ()=> MainWeaponPage()),

    GetPage(name: popularWeapon,page: (){

      return PoppularWeaponDetail();
    }),
    GetPage(name: "/", page: ()=> MainWeaponPage()),

    GetPage(name: amossBow,page: (){

      return amosBow();
    }),
    GetPage(name: lostPrayer,page: (){

      return lostPrayertotheSacredWinds();
    }),
    GetPage(name: wolf,page: (){

      return WolfsGravestone();
    }),
    GetPage(name: vortex,page: (){

      return VortexVanquisher();
    }),
    GetPage(name: "/", page: ()=> MainWeaponPage()),

    GetPage(name: rustBow,page: (){

      return rust();
    }),
    GetPage(name: "/", page: ()=> MainWeaponPage()),

    GetPage(name: dodocoTales,page: (){

      return DodocoTales();
    }),
    GetPage(name: theBlackSword,page: (){

      return TheBlackSword();
    }),
  ];
}
