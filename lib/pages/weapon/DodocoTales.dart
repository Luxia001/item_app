import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:item_app/pages/home/main_weapon_page.dart';
import 'package:item_app/utils/dimension.dart';
import 'package:item_app/widgets/app_DodocoTales.dart';
import 'package:item_app/widgets/app_amos.dart';
import 'package:item_app/widgets/app_column.dart';
import 'package:item_app/widgets/app_icon.dart';
import 'package:item_app/widgets/app_rust.dart';
import 'package:item_app/widgets/big_text.dart';
import 'package:item_app/widgets/expandable_text_widget.dart';

class DodocoTales extends StatelessWidget {
  const DodocoTales({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //background
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularWeaponImgSize,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            "assets/image/Catalysts-DodocoTales.jpg"
                        )
                    )
                ),
              )),
          //icon
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: (){
                      Get.to(()=>MainWeaponPage());
                    },
                    child:
                    AppIcon(icon: Icons.arrow_back_ios)),
                //AppIcon(icon: Icons.shopping_cart_checkout_outlined),
              ],
            ),),
          //introduce
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularWeaponImgSize-15,
              child: Container(

                padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppDodocoTales(text: "Dodoco Tales",),
                    SizedBox(height: Dimensions.height20,),
                    BigText(text: "Introduce"),
                    SizedBox(height: Dimensions.height20,),
                    Expanded(
                        child: SingleChildScrollView(
                            child: ExpandableTextWidget(
                                text: "A children's book filled with childish short stories at which one cannot help but laugh.Even those readers who have long reached adulthood cannot help but be absorbed by the innocent, naive little adventures portrayed within."))),
                  ],
                ),

              ))


        ],
      ),
      //bottomNavigationBar: Container(),
      /*bottomNavigationBar: Container(
        height: 120,
        padding: Ed,
      ),*/
    );
  }
}
