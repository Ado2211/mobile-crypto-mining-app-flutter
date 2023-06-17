import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mine_lab/core/utils/my_color.dart';
import 'package:mine_lab/views/screens/withdraw/withdraw_webview/webview_widget.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../../components/appbar/custom_appbar.dart';



class WithdrawWebviewScreen extends StatefulWidget {
  const WithdrawWebviewScreen({Key? key,required this.redirectUrl}) : super(key: key);
  final String redirectUrl;

  @override
  State<WithdrawWebviewScreen> createState() => _WithdrawWebviewScreenState();
}

class _WithdrawWebviewScreenState extends State<WithdrawWebviewScreen> {

  @override
  void initState() {
    super.initState();
    permissionServices();

  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.screenBgColor,
      appBar: const CustomAppBar(title: '',isShowBackBtn: true,bgColor: MyColor.primaryColor,),
      body: MyWebViewWidget(url: widget.redirectUrl),
      floatingActionButton: favoriteButton(),
    );
  }


  Widget favoriteButton() {
    return FloatingActionButton(
      backgroundColor: MyColor.colorRed,
      onPressed: () async {
        Get.back();
      },
      child: const Icon(Icons.cancel,color: MyColor.colorWhite,size: 30,),
    );
  }


  Future<Map<Permission, PermissionStatus>> permissionServices() async{

    Map<Permission, PermissionStatus> statuses = await [
      Permission.photos,
      Permission.microphone,
      Permission.mediaLibrary,
      Permission.camera,
      Permission.storage,
    ].request();

    return statuses;
  }

}

