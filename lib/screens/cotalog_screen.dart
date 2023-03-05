import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/cart_screen.dart';
import 'package:flutter_application_2/widgets/catalog_products.dart';
import 'package:get/get.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog'),
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CatalogProducts(),
          ElevatedButton(
              onPressed: () => Get.to(() => const CartScreen()),
              child: const Text('Go to Cart'))
        ],
      )),
    );
  }
}
