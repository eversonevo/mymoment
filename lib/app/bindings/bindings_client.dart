import 'package:get/get.dart';

import '../controller/client_controller.dart';

class ClientBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClientController>(() => ClientController());
  }
}
