import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final LogC = Get.find<LoginController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginView'),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Email'),
            ),
            TextField(
              obscureText: LogC.ishidden.value,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                  suffixIcon: IconButton(
                      onPressed: () {
                        LogC.ishidden.toggle();
                      },
                      icon: Icon(Icons.remove_red_eye))),
            ),
            ElevatedButton(
                onPressed: () {
                  LogC.login();
                },
                child: Text('Login'))
          ],
        ),
      ),
    );
  }
}
