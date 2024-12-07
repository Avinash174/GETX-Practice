import 'package:flutter/material.dart';

class ImagePickerTry extends StatefulWidget {
  const ImagePickerTry({super.key});

  @override
  State<ImagePickerTry> createState() => _ImagePickerTryState();
}

class _ImagePickerTryState extends State<ImagePickerTry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: CircleAvatar(
              radius: 45,
            ),
          ),
          TextButton(onPressed: () {}, child: const Text('Pick Image'))
        ],
      ),
    );
  }
}
