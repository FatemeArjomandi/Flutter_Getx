import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/contorel.dart';
import 'package:get/get.dart';

class TotalPage extends StatelessWidget {
  TotalPage({super.key});
  final Contoroller c = Get.put(Contoroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Total items:',
              style: TextStyle(fontSize: 30, color: Colors.blueAccent),
            ),
            const SizedBox(
              height: 10,
            ),
            Obx(() => Text(
                  '${c.sum}',
                  style:
                      const TextStyle(fontSize: 40, color: Colors.red),
                )),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 170,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue.shade800,
                  ),
                  child: TextButton(
                    onPressed: () => Get.back(),
                    child: const Text('Go bake',
                        style: TextStyle(fontSize: 30, color: Colors.white)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
