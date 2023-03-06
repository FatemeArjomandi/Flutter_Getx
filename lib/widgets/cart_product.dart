import 'package:flutter/material.dart';
import 'package:flutter_application_2/contolers/cart_contproler.dart';
import 'package:flutter_application_2/models/product_models.dart';
import 'package:get/get.dart';

class CartProducts extends StatelessWidget {
  final CartContorller contoller = Get.find();
  CartProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: ListView.builder(
        itemCount: contoller.products.length,
        itemBuilder: (BuildContext context, int index) {
          return CartProductCard(
            contoller: contoller,
            product: contoller.products.keys.toList()[index],
            quntity: contoller.products.keys.values,
            index: index,
          );
        },
      ),
    );
  }
}

class CartProductCard extends StatelessWidget {
  final CartContorller contoller;
  final Product product;
  final int quntity;
  final int index;
  const CartProductCard(
      {super.key,
      required this.contoller,
      required this.product,
      required this.quntity,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40.0,
            backgroundImage: NetworkImage(
              product.imageUrl,
            ),
          )
        ],
      )
    );
  }
}
