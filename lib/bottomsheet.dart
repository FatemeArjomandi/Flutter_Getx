import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Scrin3 extends StatelessWidget {
  const Scrin3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: () {
          Get.bottomSheet(
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                height: 300,
                decoration: const BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(18),
                        topLeft: Radius.circular(18))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Bottom sheet',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'ka haal chal sabb badiya',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red),
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(
                              Icons.thumb_down,
                            ),
                            label: const Text('No bahai')),
                        const SizedBox(
                          width: 30,
                        ),
                        ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green),
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(
                              Icons.thumb_up,
                            ),
                            label: const Text('Sabb set'))
                      ],
                    )
                  ],
                ),
              ),
              // enableDrag for escorol nakaedan
              enableDrag: false,
              isDismissible: false,
              // colors bakgerand bottoumsheeet
              barrierColor: Colors.green,
              enterBottomSheetDuration: const Duration(
                seconds: 3,
                //milliseconds: 1000
              ),
              exitBottomSheetDuration:const Duration(
                seconds: 3
              ));
        },
        child: const Icon(Icons.double_arrow),
      ),
      body: const Center(
          child: Text('Buttom Sheet ?',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600))),
    );
  }
}
