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
          Get.defaultDialog(
              title: 'Dialog Box',
              middleText: 'Do you want to continue',
              actions: [
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.thumb_down,
                    color: Colors.white,
                  ),
                  label: const Text('No'),
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                  ),
                  label: const Text('Yes'),
                ),
              ]);
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
