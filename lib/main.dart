import 'package:flutter/material.dart';
import 'package:flutter_application_2/homepage1.dart';
import 'package:flutter_application_2/homepage2.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page:() =>  HomePage1()),
        GetPage(name: '/HomePage2', page:() => const HomePage2())

      ],
      
    );
  }
}

