import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Contoroller extends GetxController {
  var books = 0.obs;
  incriment() => books.value++;
  decriment() {
    if (books > 0) {
      books.value--;
    } else {
      Get.snackbar('GetX', ' Number to negative!',
          icon: const Icon(Icons.alarm));
    }
  }
}
