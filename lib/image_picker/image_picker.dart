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
        title: const Text(
          'Image Picker',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Obx(() {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 45,
                backgroundImage: controller.imagePath.isNotEmpty
                    ? FileImage(File(controller.imagePath.toString()))
                    : null,
              ),
            ),
            TextButton(
              onPressed: () {
                controller.getImageFromCamera();
              },
              child: const Text('Pick Image'),
            ),
            TextButton(
              onPressed: () {
                controller.getImageFromGallery();
              },
              child: const Text('Take Image From Gallary'),
            ),
          ],
        );
      }),
    );
  }
}
