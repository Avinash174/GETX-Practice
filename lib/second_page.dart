import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Go Back Without GetX',
              ),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () {
                Get.back();
                Get.back();
              },
              child: const Text(
                'Go Back With GetX',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
