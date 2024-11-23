import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text(
          'Getx Tutorial',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
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
            snackPosition:
                Platform.isAndroid ? SnackPosition.BOTTOM : SnackPosition.TOP,
            icon: Icon(
              Platform.isIOS ? Icons.emoji_emotions_sharp : Icons.chat,
              color: Colors.white,
            ),
          );
        },
      ),
    );
  }
}
