import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/cotalog_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp( const GetMaterialApp( home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:const CatalogScreen(),
    );
  }
}

