import 'package:get/get.dart';
import 'package:tinqin_interview_app/services/models/product.dart';
import 'package:tinqin_interview_app/services/product_services.dart';

class ProductController extends GetxController {
  RxBool isLoading = RxBool(false);
  final RxList<Product> products = RxList();
  final IProductService productService;

  ProductController({required this.productService});

  void fetchProducts() async {
    try {
      isLoading(true);
      var fetchedProducts = await productService.fetchProducts();
      products.assignAll(fetchedProducts);
    } finally {
      isLoading(false);
    }
  }
}
