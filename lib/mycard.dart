import 'package:flutter/material.dart';
import 'package:flutter_application_2/contorel.dart';
import 'package:flutter_application_2/total.page.dart';
import 'package:get/get.dart';

class MyCard extends StatelessWidget {
  MyCard({super.key});
  final Contoroller c = Get.put(Contoroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(30),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              const Text(
                'Books',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              Expanded(child: Container()),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent),
                child: IconButton(
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    onPressed: () => c.incrimentBooks()),
              ),
              const SizedBox(
                width: 20,
              ),
              Obx(
                () => Text(
                  '${c.books}',
                  style: const TextStyle(fontSize: 30, color: Colors.green),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent),
                child: IconButton(
                  icon: const Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                  onPressed: () => c.decrimentBooks(),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Text(
                'Pens',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              Expanded(child: Container()),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent),
                child: IconButton(
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  onPressed: () => c.incrimentPens(),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Obx(() => Text(
                    '${c.pens}',
                    style: const TextStyle(fontSize: 30, color: Colors.green),
                  )),
              const SizedBox(
                width: 20,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent),
                child: IconButton(
                  icon: const Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                  onPressed: () => c.decrimentPens(),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Container(),
              ),
              Container(
                width: 150,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue.shade800,
                ),
                child:TextButton(onPressed: () => Get.to(const TotalPage()),
                child: const Text(
                  'Total',
                  style: TextStyle(fontSize: 30, color: Colors.white)),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
