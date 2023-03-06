import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/cart_product.dart';
import 'package:get/get.dart';

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
          
        ],
      ),
    );
  }
}