import 'package:flutter/material.dart';
import '../widgets/cart_product.dart';
import '../widgets/car_total.dart';
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Your Cart'),
      ),
      body: Column(
        children: [
          CartProducts(),
          const CartTotal(),
          
        ],
      ),
    );
  }
}