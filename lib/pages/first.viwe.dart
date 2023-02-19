import 'package:flutter/material.dart';
import 'package:get/get.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () => Get.toNamed('/second'),
                child: Text(
                  'Go to second page',
                  style: Theme.of(context).textTheme.bodyText1,
                ))
          ],
        ),
      ),
    );
  }
}
