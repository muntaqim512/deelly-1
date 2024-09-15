import 'package:get/get.dart';

class DetailController extends GetxController {
  var choose = 1.obs;
  var num = 2.obs;

  void increament() {
    num.value++;
  }

  void decreament() {
    num.value--;
  }
}
