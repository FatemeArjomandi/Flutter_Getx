import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/product_models.dart';
import 'package:get/get.dart';

import '../contolers/cart_contproler.dart';

class CatalogProducts extends StatelessWidget {
  const CatalogProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        itemCount: Product.products.length,
        itemBuilder: (BuildContext context, int index) {
          return CatalogProductCard(
            index: index,
          );
        },
      ),
    );
  }
}

class CatalogProductCard extends StatelessWidget {
  final cartContorller = Get.put(CartContorller());
  final int index;
  CatalogProductCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: NetworkImage(Product.products[index].imageUrl),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
              child: Text(
            Product.products[index].name,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )),
          Expanded(child: Text('${Product.products[index].price}')),
          IconButton(onPressed: () {
            cartContorller.addProduct(Product.products[index]);
          }, icon: const Icon(Icons.add_circle)),
        ],
      ),
    );
  }
}
