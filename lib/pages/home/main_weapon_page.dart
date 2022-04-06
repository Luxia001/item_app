import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:item_app/utils/colors.dart';
import 'package:item_app/utils/dimension.dart';
import 'package:item_app/widgets/big_text.dart';
import 'package:item_app/widgets/small_text.dart';
import 'package:item_app/pages//home/weapon_page_body.dart';

class MainWeaponPage extends StatefulWidget {
  const MainWeaponPage({Key? key}) : super(key: key);

  @override
  State<MainWeaponPage> createState() => _MainWeaponPageState();
}

class _MainWeaponPageState extends State<MainWeaponPage> {
  @override
  Widget build(BuildContext context) {
    //print("current height is " + MediaQuery.of(context).size.height.toString());
    return Scaffold(
        body : Column(
          children: [
            //show header
            Container(

              child: Container(
                margin: EdgeInsets.only(top: Dimensions.height45, bottom: Dimensions.height15),
                padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        BigText(text: "Weapon", color: AppColors.mainColor,),
                        Row(
                          children :[
                            SmallText(text: "All", color: Colors.black,),
                            Icon(Icons.arrow_drop_down_rounded),
                          ]
                        ),
                      ],
                    ),
                    Center(
                      child: Container(
                        width: Dimensions.height45,
                        height: Dimensions.height45,
                        child: Icon(Icons.search, color: Colors.white, size: Dimensions.iconSize24,),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimensions.radius15),
                          color: AppColors.mainColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //show body
            Expanded(child: SingleChildScrollView(
              child: WeaponPageBody(),
            ))
          ],
        )

    );
  }
}
