import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LogInController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  void loginApi() async {
    try {
      final response =
          await post(Uri.parse('https://reqres.in/api/login'), body: {
        'email': emailController.value.text,
        'password': passwordController.value.text,
      });
      var data = jsonDecode(response.body);
      log('$response.statusCode');
      log('$data');
      if (response.statusCode == 200) {
        Get.snackbar('Login Sucessful', data['error']);
      } else {
        Get.snackbar(
          'Login Failed',
          data['error'],
        );
      }
    } catch (e) {
      Get.snackbar('Execption', e.toString());
    }
  }
}
