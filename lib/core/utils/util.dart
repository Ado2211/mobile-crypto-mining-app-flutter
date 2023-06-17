import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mine_lab/core/utils/my_color.dart';

class MyUtils{

  static void splashScreenUtil(){
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
            statusBarColor: MyColor.primaryColor,
            statusBarIconBrightness: Brightness.light,
            systemNavigationBarColor: MyColor.primaryColor,
            systemNavigationBarIconBrightness: Brightness.dark
        )
    );
  }

  static void allScreenUtil(){
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: MyColor.primaryColor,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: MyColor.screenBgColor,
        systemNavigationBarIconBrightness: Brightness.dark
      )
    );
  }

  static void authScreenUtils(){
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
            statusBarColor: MyColor.primaryColor,
            statusBarIconBrightness: Brightness.light,
            systemNavigationBarColor: MyColor.screenBgColor,
            systemNavigationBarIconBrightness: Brightness.dark
        )
    );
  }

  static makePortraitOnly(){
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  static dynamic getShadow(){
    return  [
      BoxShadow(
          blurRadius: 15.0,
          offset: const Offset(0, 25),
          color: Colors.grey.shade500.withOpacity(0.6),
          spreadRadius: -35.0),
    ];
  }

  static dynamic getBottomSheetShadow(){
    return  [
      BoxShadow(
        // color: MyColor.screenBgColor,
        color: Colors.grey.shade400.withOpacity(0.08),
        spreadRadius: 3,
        blurRadius: 4,
        offset: const Offset(0, 3), // changes position of shadow
      ),
    ];
  }

  static dynamic getCardShadow(){
    return  [
      BoxShadow(
        color: Colors.grey.shade400.withOpacity(0.05),
        spreadRadius: 2,
        blurRadius: 2,
        offset: const Offset(0, 3),
      ),
    ];
  }

  static makePortraitAndLandscape(){
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }


}