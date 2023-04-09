import 'package:flutter/material.dart';
import 'package:flutter_application_2/dialogbox.dart';
import 'package:get/get.dart';

class Scrin1 extends StatelessWidget {
  const Scrin1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.cyan,
        child: GestureDetector(
          onTap: () {
            Get.to(()=>const DialogBox());
          },
          child:const  Center(
            child: Text(
              'Scrin1',
              style: TextStyle(fontSize: 40, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
