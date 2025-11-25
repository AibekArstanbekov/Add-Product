import 'package:get/get.dart';

class HomeController extends GetxController {
  String test = "text string";

  @override
  void onInit() {
    super.onInit();
  }

  testMethod() {
    print(test);
  }
}
