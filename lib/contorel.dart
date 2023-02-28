import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Contoroller extends GetxController {
  var books = 0.obs;
  var pens  = 0.obs;
  incrimentBooks() => books.value++;
  decrimentBooks() {
    if (books > 0) {
      books.value--;
    } else {
      Get.snackbar('Buying Books', ' Can not be less than zero ',
          icon: const Icon(Icons.alarm),
          barBlur: 20,
          isDismissible: true,
          duration:const Duration(seconds: 3));
         
    }
  }

  incrimentPens () => pens.value++;
  decrimentPens  (){
    if(pens > 0){
      pens.value--;
    }
    else{
      Get.rawSnackbar(
        title: 'GetX',
        message: 'Number to negative!',
        icon: const Icon(Icons.alarm)
      );
    }
  }


}
