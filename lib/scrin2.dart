import 'package:flutter/material.dart';
import 'package:flutter_application_2/bottomsheet.dart';
import 'package:get/get.dart';

class Scrin2 extends StatelessWidget {
  const Scrin2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
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
