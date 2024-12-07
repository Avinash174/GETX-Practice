import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/image_picker/image_controller.dart';

class ImagePickerTry extends StatefulWidget {
  const ImagePickerTry({super.key});

  @override
  State<ImagePickerTry> createState() => _ImagePickerTryState();
}

class _ImagePickerTryState extends State<ImagePickerTry> {
  ImagePickerController controller = Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Image Picker'),
      ),
      body: Obx(() {
        return Column(
          children: [
            CircleAvatar(
              radius: 45,
              backgroundImage: controller.imagePath.isEmpty
                  ? FileImage(File(controller.imagePath.toString()))
                  : null,
            ),
            TextButton(
                onPressed: () {
                  controller.getImage();
                },
                child: const Text('Pick Image')),
          ],
        );
      }),
    );
  }
}
