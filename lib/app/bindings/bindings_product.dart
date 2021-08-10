import 'package:get/get.dart';
import 'package:my_moment/app/controller/controller_product.dart';

class ProductBindings implements Bindings{

  @override
  void dependencies() {
    Get.lazyPut<ProductController>(() => ProductController());
    
  }
}