import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_practice/getx/example_controller.dart';

class ThirdExample extends StatefulWidget {
  const ThirdExample({super.key});

  @override
  State<ThirdExample> createState() => _ThirdExampleState();
}

class _ThirdExampleState extends State<ThirdExample> {
  ExampleController exampleController = Get.put(ExampleController());
  bool notification = false;
  @override
  Widget build(BuildContext context) {
    log('build from heres');
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Third Example Of GetX',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                'Notification',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Obx(
                () => Switch(
                  value: exampleController.notification.value,
                  onChanged: (value) {
                    // setState(() {
                    //   notification = value;
                    // });
                    exampleController.setNotification(value);
                    log('$value');
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
