import 'package:get/get.dart';

class HomePageContoroller extends GetxController{

  var value = 0.obs;

  get incriment => (){value++;};

}