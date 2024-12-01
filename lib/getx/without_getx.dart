import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/getx/counter_controller.dart';

class WithoutGetx extends StatefulWidget {
  const WithoutGetx({super.key});

  @override
  State<WithoutGetx> createState() => _WithoutGetxState();
}

class _WithoutGetxState extends State<WithoutGetx> {
  int a = 1;
  int x = 1;

  final CounterController controller1 = Get.put(CounterController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    log('Rebuild From Here');
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Without GetX Increment',
        ),
      ),
      body: Center(
        child: Obx(() {
          log('This Widget Get Only Rebuild');
          return Text(
            '${controller1.counter}',
            style: const TextStyle(
              fontSize: 20,
            ),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller1.increment();
        },
      ),
    );
  }
}
