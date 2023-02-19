import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_page_controller.dart';

class Second extends StatelessWidget {
Second({super.key});
  final homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Second page')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Number is : 0', style: Theme.of(context).textTheme.bodyText1,),
            TextButton(onPressed: () {}, child: Text('Actoin', style: Theme.of(context).textTheme.bodyText1,))
          ]),
      ),
    );
  }
}