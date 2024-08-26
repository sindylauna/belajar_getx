import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
 final bilangan = 0.obs;

  void tambahSatu() {
    if (bilangan.value >= 20){
      Get.snackbar('Warning', 'udah ah cape',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.amber);
    }else{
    bilangan.value++;
    }
  }
  void kurangSatu() {
    if (bilangan.value <= 0){
      Get.snackbar('Warning', 'Hayo Terus aja Dikurangin',
      snackPosition: SnackPosition.TOP,
      backgroundColor: Color.fromARGB(255, 13, 179, 129));
    }else{
    bilangan.value--;
    }
  }
  void resetData(){
    bilangan.value = 0;
  }
}
