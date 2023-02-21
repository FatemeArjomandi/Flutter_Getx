import 'dart:html';

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
    );
  }
}