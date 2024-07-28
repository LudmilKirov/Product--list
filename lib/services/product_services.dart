import 'package:dio/dio.dart';
import 'package:tinqin_interview_app/services/models/product.dart';

abstract class IProductService {
  Future<List<Product>> fetchProducts();
}

class ProductService implements IProductService {
  final Dio _dio = Dio();

  @override
  Future<List<Product>> fetchProducts() async {
    final response = await _dio.get('https://dummyjson.com/products');

    if (response.statusCode == 200) {
      final List<dynamic> json = response.data['products'];
      return json.map((e) => Product.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
