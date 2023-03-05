import 'package:flutter_application_2/models/product_models.dart';
import 'package:get/get.dart';

class CartContorller extends GetxController {
  final _products = {}.obs;

  void addProduct(Product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }
    Get.snackbar(
        'Product Added', 'You have added the ${product.name} to the cart',
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 2));
  }
}
