import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/getx/example_two.dart';

class AnotherExampleGetX extends StatefulWidget {
  const AnotherExampleGetX({super.key});

  @override
  State<AnotherExampleGetX> createState() => _AnotherExampleGetXState();
}

class _AnotherExampleGetXState extends State<AnotherExampleGetX> {
  double opacity = 0.4; // Define opacity at the class level
  ExampleTwo exampleTwoController = Get.put(ExampleTwo());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    log('build from here');
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Opacity Without GetX',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Obx(
              () => Container(
                height: Get.height * 0.3,
                width: Get.width * 0.7,
                color:
                    Colors.red.withOpacity(exampleTwoController.opcaity.value),
              ),
            ),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          Obx(
            () => Slider(
              value: exampleTwoController.opcaity.value,
              min: 0.0, // Minimum slider value
              max: 1.0, // Maximum slider value
              onChanged: (value) {
                // setState(() {
                //   opacity = value; // Update the opacity value
                //   log('Opacity: $opacity');
                // });
                exampleTwoController.setOpacity(value);
              },
            ),
          )
        ],
      ),
    );
  }
}
