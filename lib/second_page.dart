// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SecondPage extends StatefulWidget {
  var name;
  SecondPage({
    super.key,
    this.name = '',
  });

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Second Screen ${Get.arguments[1]}',
        ),
      ),
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
