import 'package:get/get.dart';
import 'package:my_moment/app/controller/home_controller.dart';


class HomeBinding3 extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}