import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/first.viwe.dart';
import 'package:flutter_application_2/pages/second.viwe.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter GetX State Management Demo',
      theme: ThemeData(
        textTheme: const TextTheme(bodyText1: TextStyle(fontSize: 19, color: Colors.blueGrey))
      ),
      initialRoute: '/first',
      getPages: [
        GetPage(name: '/first', page: () => const First()),
        GetPage(name: '/second', page:() =>  Second())
      ],
    );
    }}