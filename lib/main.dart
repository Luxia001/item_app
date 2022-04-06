import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:item_app/pages/home/main_weapon_page.dart';
import 'package:item_app/pages/weapon/poppular_weapon_detail.dart';
import 'package:item_app/pages/weapon/recommended_weapon_detail.dart';
import 'package:item_app/routes/route_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',

      home: MainWeaponPage(),
      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
    );
  }
}
