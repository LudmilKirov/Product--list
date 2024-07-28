import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinqin_interview_app/bindings/bindings.dart';
import 'package:tinqin_interview_app/products/screen/product_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AppBindings(),
      home: const ProductListScreen(),
    );
  }
}
