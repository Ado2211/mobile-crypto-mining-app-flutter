import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mine_lab/core/utils/my_color.dart';
import 'package:mine_lab/core/utils/styles.dart';

import '../../../../../core/utils/dimensions.dart';
import '../../../../components/buttons/circle_button_with_icon.dart';

class LatestResultListItem extends StatelessWidget {

  final String text;
  final String quantity;
  final String icon;
  final Color bgColor;
  final Color textColor;
  final bool isCircle;

  const LatestResultListItem({Key? key,
  required this.text,
  required this.quantity,
  required this.icon,
  this.textColor = MyColor.colorWhite,
  this.isCircle = true,
  required this.bgColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 14),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(4),
        gradient: LinearGradient(
          colors: [
            bgColor,
            bgColor.withOpacity(.95),
            bgColor.withOpacity(.8),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Row(
        children: [
          isCircle?CircleButtonWithIcon(
            press: () {},
            bg: bgColor,
            isIcon: false,
            isAsset: true,
            circleSize: 35,
            imageSize: 32,
            padding:3,
            borderColor: Colors.transparent,
            isSvg: false,
            iconColor: MyColor.colorWhite,
            imagePath: icon,
          ):Container(
            height: 35,
            width: 35,
            padding: const EdgeInsets.all(3),
            alignment: Alignment.center,
            decoration: const BoxDecoration(color: MyColor.transparentColor),
            child: CircleAvatar( backgroundColor: MyColor.transparentColor,child: Image.asset(
              icon,
              fit: BoxFit.cover,
              width: 32,
              height: 32,
              color: MyColor.colorWhite,
            )),
          ),
          const SizedBox(width: 12,),
          Expanded(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Text(
                  quantity.padLeft(2,'0'),
                  style: interRegularDefault.copyWith(
                      fontSize: Dimensions.fontExtraLarge,color: textColor),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  text.tr,
                  style: interLightDefault.copyWith(
                      fontSize: Dimensions.fontDefault,color: textColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
