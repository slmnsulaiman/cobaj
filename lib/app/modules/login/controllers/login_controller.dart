import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController EmailC = TextEditingController();
  TextEditingController PassC = TextEditingController();
  RxBool ishidden = true.obs;

  void login() {
    if (EmailC.text.isEmail && PassC.text.length >= 8) {
      Get.toNamed('/home');
    } else {
      Get.snackbar('Eror', 'Tidak Sesuai');
    }
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
