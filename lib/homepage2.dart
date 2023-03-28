import 'package:flutter/material.dart';
import 'package:flutter_application_2/homepageContoroller.dart';
import 'package:get/get.dart';

class HomePage2 extends StatelessWidget {
  HomePage2({super.key});
  final HomePageContoroller counter = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Value:'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${counter.value}',
                style: const TextStyle(
                    fontSize: 30,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
