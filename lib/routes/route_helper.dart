import 'package:get/get.dart';
import 'package:item_app/pages/home/main_weapon_page.dart';
import 'package:item_app/pages/weapon/AmosBow.dart';
import 'package:item_app/pages/weapon/DodocoTales.dart';
import 'package:item_app/pages/weapon/LostPrayertotheSacredWinds.dart';
import 'package:item_app/pages/weapon/Rust.dart';
import 'package:item_app/utils/dimension.dart';

import '../pages/weapon/poppular_weapon_detail.dart';
import '../pages/weapon/AmosBow.dart';
import '../pages/weapon/Rust.dart';

class RouteHelper{
  static const String initial = "/";
  static const popularWeapon="/poppular_weapon";
  static const amossBow="/AmosBow";
  static const rustBow="/Rust";
  static const dodocoTales="/DodocoTales";
  static const lostPrayer="/LostPrayer";

  static String getPopularWeapon()=>'$popularWeapon';
  static String getamossBow()=>'$amossBow';
  static String getlostPrayer()=>'$lostPrayer';
  static String getRustBow()=>'$rustBow';
  static String getDodocoTales()=>'$dodocoTales';

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
    GetPage(name: "/", page: ()=> MainWeaponPage()),

    GetPage(name: rustBow,page: (){

      return rust();
    }),
    GetPage(name: "/", page: ()=> MainWeaponPage()),

    GetPage(name: dodocoTales,page: (){

      return DodocoTales();
    }),
  ];
}
