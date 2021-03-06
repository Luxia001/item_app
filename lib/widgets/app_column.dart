import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:item_app/widgets/small_text.dart';

import '../utils/colors.dart';
import '../utils/dimension.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, size: Dimensions.font26,),
        SizedBox(height: Dimensions.height10,),
        Row(
          children: [
            Wrap(
              children: List.generate(1, (index) {return Icon(Icons.star, color: Colors.blueGrey, size: 15,);}),
            ),
            //SizedBox(width: 10,),
            //SmallText(text: "4.5"),
            //SizedBox(width: 10,),
            //SmallText(text: "1287"),
            //SizedBox(width: 10,),
            //SmallText(text: "comments"),
          ],
        ),
        SizedBox(height: Dimensions.height20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(icon: Icons.circle_sharp,
              text: "Normal",
              iconColor: Colors.grey,),
            IconAndTextWidget(icon: Icons.search,
              text: "How to get",
              iconColor: AppColors.mainColor,),
            IconAndTextWidget(icon: Icons.bookmark_border,
              text: "Book Mark",
              iconColor: Colors.red,),
          ],
        )
      ],
    );
  }
}
