import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Getx Tutorial',
        ),
      ),
      body: Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            'Message',
            'Welcome',
            duration: const Duration(
              seconds: 2,
            ),
            colorText: Colors.white,
            backgroundColor: Colors.blue,
            snackPosition: SnackPosition.TOP,
            icon: Icon(
              Platform.isIOS ? Icons.message : Icons.message,
              color: Colors.white,
            ),
          );
        },
      ),
    );
  }
}
