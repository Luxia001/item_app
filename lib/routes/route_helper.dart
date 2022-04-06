import 'package:get/get.dart';
import 'package:item_app/pages/home/main_weapon_page.dart';
import 'package:item_app/utils/dimension.dart';

import '../pages/weapon/poppular_weapon_detail.dart';

class RouteHelper{
  static const String initial = "/";
  static const popularWeapon="/poppular_weapon";

  static String getPopularWeapon()=>'$popularWeapon';

  static List<GetPage> routes =[
    GetPage(name: "/", page: ()=> MainWeaponPage()),

    GetPage(name: popularWeapon,page: (){

      return PoppularWeaponDetail();
    }),
  ];
}
