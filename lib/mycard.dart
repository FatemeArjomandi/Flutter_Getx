import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/contorel.dart';
import 'package:get/get.dart';

class MyCard extends StatelessWidget {
  MyCard({super.key});
  final Contoroller c = Get.put(Contoroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(30),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(children: [
            const Text(
              'Books',
              style: TextStyle(fontSize: 30, color: Colors.amber),
            ),
            Expanded(child: Container()),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.redAccent),
              child: IconButton(
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  onPressed: () => c.incriment()),
            ),
            const SizedBox(
              width: 10,
            ),
            Obx(
              () => Text(
                c.books.toString(),
                style: const TextStyle(fontSize: 20, color: Colors.green),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.redAccent),
              child: IconButton(
                icon: const Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
                onPressed: () => c.decriment(),
              ),
            ),
          ]),
        ],
      ),
    ));
  }
}
