import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class GetXHW extends StatefulWidget {
  const GetXHW({super.key});

  @override
  State<GetXHW> createState() => _GetXHWState();
}

class _GetXHWState extends State<GetXHW> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Height & Width'),
      ),
      body: Column(
        children: [
          Container(
            // height: MediaQuery.of(context).size.height * .7, using media quary
            // height: 100, static
            height: Get.height * .5, // using getx
            color: Colors.amber,
            child: const Center(
              child: Text(
                'Hight & Width',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            // height: MediaQuery.of(context).size.height * .7, using media quary
            // height: 100, static
            height: Get.height * .5, // using getx
            color: Colors.blue,
            child: const Center(
              child: Text(
                'Hight & Width',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
