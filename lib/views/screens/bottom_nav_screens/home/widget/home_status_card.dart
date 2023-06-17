import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mine_lab/core/utils/dimensions.dart';
import 'package:mine_lab/core/utils/my_color.dart';
import 'package:mine_lab/core/utils/my_images.dart';
import 'package:mine_lab/core/utils/my_strings.dart';
import 'package:mine_lab/core/utils/styles.dart';
import 'package:mine_lab/data/controller/bottom_nav/home/home_controller.dart';
import 'package:mine_lab/views/components/divider/custom_divider.dart';
import 'package:mine_lab/views/screens/bottom_nav_screens/home/widget/card_list_item.dart';

import 'latest_result_list_item.dart';

class HomeStatusCard extends StatelessWidget {
  const HomeStatusCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Container(
          //margin: const EdgeInsets.symmetric(horizontal: Dimensions.space15),
          decoration: BoxDecoration(color: MyColor.colorWhite, borderRadius: BorderRadius.circular(Dimensions.defaultRadius)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(vertical: Dimensions.space15, horizontal: Dimensions.space15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(MyStrings.minerTracksInfo.tr,style:  interRegularDefault.copyWith(fontWeight: FontWeight.w600)),
                      const SizedBox(height: 12,),
                      Row(
                        children: [
                          Expanded(
                              child: LatestResultListItem(
                                bgColor: MyColor.card1,
                                text:  MyStrings.running.tr,
                                icon: MyImages.running,
                                quantity: controller.approved.padLeft(2,'0'))),
                          const SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: LatestResultListItem(
                                  bgColor: MyColor.card,
                                  isCircle: false,
                                  text:  MyStrings.unPaid.tr,
                                  icon: MyImages.unpaid,
                                  quantity: controller.unpaid.padLeft(2,'0')))
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),

                    
                    ],
                  )
          )
          ]
      )));
  }
}
