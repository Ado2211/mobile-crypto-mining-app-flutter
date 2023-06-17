import 'package:get/get.dart';
import 'package:mine_lab/core/route/route.dart';
import 'package:mine_lab/core/utils/my_strings.dart';
import 'package:mine_lab/data/repo/menu_repo/menu_repo.dart';
import 'package:mine_lab/views/components/snackbar/show_custom_snackbar.dart';

class MyMenuController extends GetxController{

  MenuRepo menuRepo;
  MyMenuController({required this.menuRepo});

  bool logoutLoading = false;

  Future<void>logout()async{
    logoutLoading = true;
    update();

    await menuRepo.logout();
    CustomSnackBar.showCustomSnackBar(errorList: [], msg: [MyStrings.logoutSuccessMsg], isError: false);

    logoutLoading = false;
    update();
    Get.offAllNamed(RouteHelper.loginScreen);
  }
}