import 'package:flutter/material.dart';
import 'package:flutter_application_2/homepageContoroller.dart';
import 'package:get/get.dart';

class HomePage1 extends StatelessWidget {
  HomePage1({super.key});
  final HomePageContoroller counter = Get.put(HomePageContoroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Getx Counter'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Obx(
            () => Text(
              '${counter.value}',
              style: const TextStyle(
                  fontSize: 30,
                  color: Colors.lime,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () => counter.incriment(),
            child: const Text('incriment',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.purpleAccent,
                    fontWeight: FontWeight.bold)),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> Get.toNamed('/HomePage2'),
        child: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
