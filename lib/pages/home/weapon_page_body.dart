import 'dart:html';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:item_app/pages/weapon/poppular_weapon_detail.dart';
import 'package:item_app/routes/route_helper.dart';
import 'package:item_app/utils/colors.dart';
import 'package:item_app/widgets/app_column.dart';
import 'package:item_app/widgets/big_text.dart';
import 'package:item_app/widgets/icon_and_text_widget.dart';
import 'package:item_app/widgets/small_text.dart';
import 'package:item_app/utils/dimension.dart';
class WeaponPageBody extends StatefulWidget {
  const WeaponPageBody({Key? key}) : super(key: key);

  @override
  State<WeaponPageBody> createState() => _WeaponPageBodyState();
}

class _WeaponPageBodyState extends State<WeaponPageBody> {
  PageController pageController = PageController(viewportFraction: 0.850);
  var _currPageValue = 0.0;
  double _scaleFactor=0.8;
  double _height = Dimensions.pageViewContainer;

  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
        print("Current valur is " + _currPageValue.toString());
      });
    });
  }

  @override
  void dispose(){
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //silde weapon
        Container(
          height: Dimensions.pageView,
          child: GestureDetector(
            onTap: (){
              Get.toNamed(RouteHelper.getPopularWeapon());
            },
            child: PageView.builder(
                controller: pageController,
                itemCount: 5,
                itemBuilder: (context, position) {
                  return _buildPageItem(position);
                }),

          ),

        ),

        new DotsIndicator(
          dotsCount: 5,
          position: _currPageValue,
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          ),
        ),

        SizedBox(height: Dimensions.height30,),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width30, bottom: Dimensions.height10 ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Popular weapon", ),
              SizedBox(width: Dimensions.widtht10,),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: BigText(text: ".", color : Colors.black26),
              ),
              SizedBox(width: Dimensions.widtht10,),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: SmallText(text: "Weapon pairing",),
              ),
            ],
          ),
        ),
        // list weapon
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
              itemCount: 1,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, bottom: Dimensions.height10),
                  child: Row(
                    children: [
                      // image
                      Container(
                        child:  GestureDetector(
                        onTap: (){
                          Get.toNamed(RouteHelper.getamossBow());
                       }),
                        width :250,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimensions.radius20),
                          color: Colors.white38,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                "assets/image/Bow-AmossBow.jpg"
                            ),
                          ),
                        ),
                      ),

                      // text
                      Expanded(
                        child: Container(
                          height: Dimensions.listViewTextConSize,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(Dimensions.radius20),
                              bottomRight: Radius.circular(Dimensions.radius20),
                            ),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: Dimensions.widtht10, right: Dimensions.widtht10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BigText(text: "Amos's Bow"),
                                SizedBox(height: Dimensions.height10,),
                                Wrap(
                                  children: List.generate(5, (index) {return Icon(Icons.star, color: Colors.yellow, size: 15,);}),
                                ),
                                //SmallText(text: "13/04/2020"),
                                SizedBox(height: Dimensions.height10,),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconAndTextWidget(icon: Icons.circle_sharp,
                                      text: "Legend",
                                      iconColor: Colors.yellow),
                                    IconAndTextWidget(icon: Icons.search,
                                      text: "How to get",
                                      iconColor: AppColors.mainColor,),
                                    IconAndTextWidget(icon: Icons.bookmark_border,
                                      text: "Book Mark",
                                      iconColor: Colors.red,),
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 1,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, bottom: Dimensions.height10),
                child: Row(
                  children: [
                    // image
                    Container(
                      child:  GestureDetector(
                          onTap: (){
                            Get.toNamed(RouteHelper.getRustBow());
                          }),
                      width :250,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius20),
                        color: Colors.white38,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/image/Bow-Rust.jpg"
                          ),
                        ),
                      ),
                    ),

                    // text
                    Expanded(
                      child: Container(
                        height: Dimensions.listViewTextConSize,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.radius20),
                            bottomRight: Radius.circular(Dimensions.radius20),
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: Dimensions.widtht10, right: Dimensions.widtht10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BigText(text: "Rust"),
                              SizedBox(height: Dimensions.height10,),
                              Wrap(
                                children: List.generate(4, (index) {return Icon(Icons.star, color: Colors.purple, size: 15,);}),
                              ),
                              //SmallText(text: "13/04/2020"),
                              SizedBox(height: Dimensions.height10,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconAndTextWidget(icon: Icons.circle_sharp,
                                      text: "Epic",
                                      iconColor: Colors.purple),
                                  IconAndTextWidget(icon: Icons.search,
                                    text: "How to get",
                                    iconColor: AppColors.mainColor,),
                                  IconAndTextWidget(icon: Icons.bookmark_border,
                                    text: "Book Mark",
                                    iconColor: Colors.red,),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 1,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, bottom: Dimensions.height10),
                child: Row(
                  children: [
                    // image
                    Container(
                      child:  GestureDetector(
                          onTap: (){
                            Get.toNamed(RouteHelper.getlostPrayer());
                          }),
                      width :250,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius20),
                        color: Colors.white38,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/image/Catalysts-LostPrayertoTheSacred.jpg"
                          ),
                        ),
                      ),
                    ),

                    // text
                    Expanded(
                      child: Container(
                        height: Dimensions.listViewTextConSize,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.radius20),
                            bottomRight: Radius.circular(Dimensions.radius20),
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: Dimensions.widtht10, right: Dimensions.widtht10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BigText(text: "Lost Prayer to the Sacred Winds"),
                              SizedBox(height: Dimensions.height10,),
                              Wrap(
                                children: List.generate(5, (index) {return Icon(Icons.star, color: Colors.yellow, size: 15,);}),
                              ),
                              //SmallText(text: "13/04/2020"),
                              SizedBox(height: Dimensions.height10,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconAndTextWidget(icon: Icons.circle_sharp,
                                      text: "Legend",
                                      iconColor: Colors.yellow),
                                  IconAndTextWidget(icon: Icons.search,
                                    text: "How to get",
                                    iconColor: AppColors.mainColor,),
                                  IconAndTextWidget(icon: Icons.bookmark_border,
                                    text: "Book Mark",
                                    iconColor: Colors.red,),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 1,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, bottom: Dimensions.height10),
                child: Row(
                  children: [
                    // image
                    Container(
                      child:  GestureDetector(
                          onTap: (){
                            Get.toNamed(RouteHelper.getDodocoTales());
                          }),
                      width :250,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius20),
                        color: Colors.white38,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/image/Catalysts-DodocoTales.jpg"
                          ),
                        ),
                      ),
                    ),

                    // text
                    Expanded(
                      child: Container(
                        height: Dimensions.listViewTextConSize,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.radius20),
                            bottomRight: Radius.circular(Dimensions.radius20),
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: Dimensions.widtht10, right: Dimensions.widtht10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BigText(text: "DodocoTales"),
                              SizedBox(height: Dimensions.height10,),
                              Wrap(
                                children: List.generate(4, (index) {return Icon(Icons.star, color: Colors.purple, size: 15,);}),
                              ),
                              //SmallText(text: "13/04/2020"),
                              SizedBox(height: Dimensions.height10,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconAndTextWidget(icon: Icons.circle_sharp,
                                      text: "Epic",
                                      iconColor: Colors.purple),
                                  IconAndTextWidget(icon: Icons.search,
                                    text: "How to get",
                                    iconColor: AppColors.mainColor,),
                                  IconAndTextWidget(icon: Icons.bookmark_border,
                                    text: "Book Mark",
                                    iconColor: Colors.red,),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 1,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, bottom: Dimensions.height10),
                child: Row(
                  children: [
                    // image
                    Container(
                      child:  GestureDetector(
                          onTap: (){
                            Get.toNamed(RouteHelper.getPopularWeapon());
                          }),
                      width :250,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius20),
                        color: Colors.white38,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/image/Claymores-WolfsGravestone.jpg"
                          ),
                        ),
                      ),
                    ),

                    // text
                    Expanded(
                      child: Container(
                        height: Dimensions.listViewTextConSize,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.radius20),
                            bottomRight: Radius.circular(Dimensions.radius20),
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: Dimensions.widtht10, right: Dimensions.widtht10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BigText(text: "Wolf's Gravestone"),
                              SizedBox(height: Dimensions.height10,),
                              Wrap(
                                children: List.generate(5, (index) {return Icon(Icons.star, color: Colors.yellow, size: 15,);}),
                              ),
                              //SmallText(text: "13/04/2020"),
                              SizedBox(height: Dimensions.height10,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconAndTextWidget(icon: Icons.circle_sharp,
                                      text: "Legend",
                                      iconColor: Colors.yellow),
                                  IconAndTextWidget(icon: Icons.search,
                                    text: "How to get",
                                    iconColor: AppColors.mainColor,),
                                  IconAndTextWidget(icon: Icons.bookmark_border,
                                    text: "Book Mark",
                                    iconColor: Colors.red,),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 1,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, bottom: Dimensions.height10),
                child: Row(
                  children: [
                    // image
                    Container(
                      child:  GestureDetector(
                          onTap: (){
                            Get.toNamed(RouteHelper.getPopularWeapon());
                          }),
                      width :250,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius20),
                        color: Colors.white38,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/image/Claymores-TheBell.jpg"
                          ),
                        ),
                      ),
                    ),

                    // text
                    Expanded(
                      child: Container(
                        height: Dimensions.listViewTextConSize,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.radius20),
                            bottomRight: Radius.circular(Dimensions.radius20),
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: Dimensions.widtht10, right: Dimensions.widtht10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BigText(text: "The Bell"),
                              SizedBox(height: Dimensions.height10,),
                              Wrap(
                                children: List.generate(4, (index) {return Icon(Icons.star, color: Colors.purple, size: 15,);}),
                              ),
                              //SmallText(text: "13/04/2020"),
                              SizedBox(height: Dimensions.height10,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconAndTextWidget(icon: Icons.circle_sharp,
                                      text: "Epic",
                                      iconColor: Colors.purple),
                                  IconAndTextWidget(icon: Icons.search,
                                    text: "How to get",
                                    iconColor: AppColors.mainColor,),
                                  IconAndTextWidget(icon: Icons.bookmark_border,
                                    text: "Book Mark",
                                    iconColor: Colors.red,),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 1,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, bottom: Dimensions.height10),
                child: Row(
                  children: [
                    // image
                    Container(
                      child:  GestureDetector(
                          onTap: (){
                            Get.toNamed(RouteHelper.getPopularWeapon());
                          }),
                      width :250,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius20),
                        color: Colors.white38,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/image/Polearms-VortexVavquisher.jpg"
                          ),
                        ),
                      ),
                    ),

                    // text
                    Expanded(
                      child: Container(
                        height: Dimensions.listViewTextConSize,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.radius20),
                            bottomRight: Radius.circular(Dimensions.radius20),
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: Dimensions.widtht10, right: Dimensions.widtht10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BigText(text: "Vortex Vanquisher"),
                              SizedBox(height: Dimensions.height10,),
                              Wrap(
                                children: List.generate(5, (index) {return Icon(Icons.star, color: Colors.yellow, size: 15,);}),
                              ),
                              //SmallText(text: "13/04/2020"),
                              SizedBox(height: Dimensions.height10,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconAndTextWidget(icon: Icons.circle_sharp,
                                      text: "Legend",
                                      iconColor: Colors.yellow),
                                  IconAndTextWidget(icon: Icons.search,
                                    text: "How to get",
                                    iconColor: AppColors.mainColor,),
                                  IconAndTextWidget(icon: Icons.bookmark_border,
                                    text: "Book Mark",
                                    iconColor: Colors.red,),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 1,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, bottom: Dimensions.height10),
                child: Row(
                  children: [
                    // image
                    Container(
                      child:  GestureDetector(
                          onTap: (){
                            Get.toNamed(RouteHelper.getPopularWeapon());
                          }),
                      width :250,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius20),
                        color: Colors.white38,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/image/Polearms-FavoniusLance.jpg"
                          ),
                        ),
                      ),
                    ),

                    // text
                    Expanded(
                      child: Container(
                        height: Dimensions.listViewTextConSize,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.radius20),
                            bottomRight: Radius.circular(Dimensions.radius20),
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: Dimensions.widtht10, right: Dimensions.widtht10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BigText(text: "Favonius Lance"),
                              SizedBox(height: Dimensions.height10,),
                              Wrap(
                                children: List.generate(4, (index) {return Icon(Icons.star, color: Colors.purple, size: 15,);}),
                              ),
                              //SmallText(text: "13/04/2020"),
                              SizedBox(height: Dimensions.height10,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconAndTextWidget(icon: Icons.circle_sharp,
                                      text: "Epic",
                                      iconColor: Colors.purple),
                                  IconAndTextWidget(icon: Icons.search,
                                    text: "How to get",
                                    iconColor: AppColors.mainColor,),
                                  IconAndTextWidget(icon: Icons.bookmark_border,
                                    text: "Book Mark",
                                    iconColor: Colors.red,),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 1,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, bottom: Dimensions.height10),
                child: Row(
                  children: [
                    // image
                    Container(
                      child:  GestureDetector(
                          onTap: (){
                            Get.toNamed(RouteHelper.getPopularWeapon());
                          }),
                      width :250,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius20),
                        color: Colors.white38,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/image/Sword-AquilaFavonia.jpg"
                          ),
                        ),
                      ),
                    ),

                    // text
                    Expanded(
                      child: Container(
                        height: Dimensions.listViewTextConSize,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.radius20),
                            bottomRight: Radius.circular(Dimensions.radius20),
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: Dimensions.widtht10, right: Dimensions.widtht10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BigText(text: "Aquila Favonia"),
                              SizedBox(height: Dimensions.height10,),
                              Wrap(
                                children: List.generate(5, (index) {return Icon(Icons.star, color: Colors.yellow, size: 15,);}),
                              ),
                              //SmallText(text: "13/04/2020"),
                              SizedBox(height: Dimensions.height10,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconAndTextWidget(icon: Icons.circle_sharp,
                                      text: "Legend",
                                      iconColor: Colors.yellow),
                                  IconAndTextWidget(icon: Icons.search,
                                    text: "How to get",
                                    iconColor: AppColors.mainColor,),
                                  IconAndTextWidget(icon: Icons.bookmark_border,
                                    text: "Book Mark",
                                    iconColor: Colors.red,),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 1,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, bottom: Dimensions.height10),
                child: Row(
                  children: [
                    // image
                    Container(
                      child:  GestureDetector(
                          onTap: (){
                            Get.toNamed(RouteHelper.getDodocoTales());
                          }),
                      width :250,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius20),
                        color: Colors.white38,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/image/Sword-TheBlackSword.jpg"
                          ),
                        ),
                      ),
                    ),

                    // text
                    Expanded(
                      child: Container(
                        height: Dimensions.listViewTextConSize,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.radius20),
                            bottomRight: Radius.circular(Dimensions.radius20),
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: Dimensions.widtht10, right: Dimensions.widtht10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BigText(text: "The Black Sword"),
                              SizedBox(height: Dimensions.height10,),
                              Wrap(
                                children: List.generate(4, (index) {return Icon(Icons.star, color: Colors.purple, size: 15,);}),
                              ),
                              //SmallText(text: "13/04/2020"),
                              SizedBox(height: Dimensions.height10,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconAndTextWidget(icon: Icons.circle_sharp,
                                      text: "Epic",
                                      iconColor: Colors.purple),
                                  IconAndTextWidget(icon: Icons.search,
                                    text: "How to get",
                                    iconColor: AppColors.mainColor,),
                                  IconAndTextWidget(icon: Icons.bookmark_border,
                                    text: "Book Mark",
                                    iconColor: Colors.red,),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix =new Matrix4.identity();
    if(index == _currPageValue.floor()){
      var currScale = 1-(_currPageValue-index)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);

    }else if(index == _currPageValue.floor()+1){
      var currScale = _scaleFactor+(_currPageValue-index+1)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);

    }else if(index == _currPageValue.floor()-1){
      var currScale = 1-(_currPageValue-index)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);

    }else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, _height*(1-_scaleFactor)/2, 1);

    }

    return Transform(
      transform : matrix,
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            height: 400,
            width: 800,
            margin: EdgeInsets.only(left: Dimensions.widtht10, right: Dimensions.widtht10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius30),
              color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("assets/image/Bow.jpg")),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 150,
              width: 600,
              margin: EdgeInsets.only(left: Dimensions.width30, right: Dimensions.width30, bottom: Dimensions.height30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFe8e8e8),
                    blurRadius: 5.0,
                    offset: Offset(0 , 5),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5,0)
                  ),
                  BoxShadow(
                      color: Colors.white,
                      offset: Offset(5,0)
                  ),
                ],

                ),
              child: Container(
                padding: EdgeInsets.only(top: Dimensions.height15,left: 15, right: 15),
                child: AppColumn(text: "Bow",),
              ),

              ),
            ),
        ],
      ),
    );
  }
}
