import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Scrin3 extends StatelessWidget {
  const Scrin3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //floatingActionButtonAnimator: ,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.bottomSheet(Container(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            height: 300,
            decoration: BoxDecoration(
                color: Colors.white70, borderRadius: BorderRadius.circular(20)),
          ));
        },
        child: const Icon(Icons.double_arrow),
      ),
      body: const Center(
          child: Text('Buttom Sheet ?',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold))),
    );
  }
}
