import 'package:flutter/material.dart';

class ImagePickerWithGetx extends StatefulWidget {
  const ImagePickerWithGetx({super.key});

  @override
  State<ImagePickerWithGetx> createState() => _ImagePickerWithGetxState();
}

class _ImagePickerWithGetxState extends State<ImagePickerWithGetx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'Image Picker With GetX',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
