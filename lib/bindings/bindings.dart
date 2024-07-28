import 'package:get/get.dart';
import 'package:tinqin_interview_app/products/controllers/product_controllers.dart';
import 'package:tinqin_interview_app/services/product_services.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IProductService>(() => ProductService());
    Get.lazyPut(() => ProductController(productService: Get.find()));
  }
}
