import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Snackbar extends StatelessWidget {
  const Snackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {
          Get.snackbar('snackbar', 'getx helpful',
              snackPosition: SnackPosition.BOTTOM,
              //padding: const EdgeInsets.all(30),
              margin: const EdgeInsets.all(30),
              backgroundColor: Colors.amber,
              icon: const Icon(
                Icons.thumb_up,
                color: Colors.white,
              ));
        },
        child: const Icon(
          Icons.camera,
          color: Colors.white,
        ),
      ),
      body: const Center(
        child: Text(
          'SnackBar',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
