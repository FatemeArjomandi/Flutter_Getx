import 'package:flutter/material.dart';
import 'package:flutter_application_2/bottomsheet.dart';
import 'package:get/get.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.defaultDialog();
        },
        child: const Icon(
          Icons.camera,
          color: Colors.white,
        ),
      ),
      body: GestureDetector(
        onTap: () {
          Get.to(() => const Scrin3());
        },
        child: const Center(
          child: Text(
            'Dialog Box ?',
            style: TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
