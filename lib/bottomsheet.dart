import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Scrin3 extends StatelessWidget {
  const Scrin3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.bottomSheet(Container(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            height: 300,
            decoration: const BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(18),
                    topLeft: Radius.circular(18))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children:  [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Bottom sheet',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'gfvyagygyglYGY',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    ElevatedButton.icon(style:ElevatedButton.styleFrom(primary:Colors.red),onPressed: (){Get.back();}, icon:const Icon(Icons.thumb_down,), label:const Text('No')),
                    const SizedBox(width: 30,),
                    ElevatedButton.icon(onPressed: (){Get.back();}, icon:const Icon(Icons.thumb_up, color: Colors.blue,), label:const Text('yes'))
                  ],
                )
              ],
            ),
          ));
        },
        child: const Icon(Icons.double_arrow),
      ),
      body: const Center(
          child: Text('Buttom Sheet ?',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold))),
    );
  }
}
