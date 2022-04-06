import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:item_app/utils/colors.dart';
import 'package:item_app/utils/dimension.dart';
import 'package:item_app/widgets/app_icon.dart';
import 'package:item_app/widgets/big_text.dart';
import 'package:item_app/widgets/expandable_text_widget.dart';

class RecommenededWeaponDetail extends StatelessWidget {
  const RecommenededWeaponDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              children: [
                AppIcon(icon: Icons.clear),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                //color: Colors.white,
                child: Center(child: BigText(size: Dimensions.font26,text: "Bow",)),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5,bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20)
                  )
                ),

              ),

            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/Bow.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(

                  child: ExpandableTextWidget(text: "A hunter's music consists of but two sounds: the twang of the bowstring and the whoosh of soaring arrows.",),
                  margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
