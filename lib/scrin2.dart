import 'package:flutter/material.dart';
import 'package:flutter_application_2/bottomsheet.dart';
import 'package:get/get.dart';

class Scrin2 extends StatelessWidget {
  const Scrin2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Get.to(()=>const Scrin3());
        },
        child:const Center(
          child:  Text(
            'Scrin2',
            style: TextStyle(fontSize: 40, color: Colors.red),
          ),
        ),
      ),
    );
  }
}