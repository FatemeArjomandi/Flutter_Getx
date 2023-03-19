import 'package:flutter/material.dart';
import 'package:flutter_application_2/home_page_controller.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final Controller c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx((() => Text('Clicks: ${c.count}'))),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.to(other()),
          child: const Text('Go to other'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => c.increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}

// ignore: camel_case_types
class other extends StatelessWidget {
  other({super.key});
  final Controller c = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page other'),
      ),
      body: Center(
        child: Text(
          '${c.count}',
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
