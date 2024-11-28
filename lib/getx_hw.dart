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
            height: Get.height * .2, // using getx
            width: Get.width * .65,
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
          SizedBox(
            height: Get.height * .02,
          ),
          Container(
            // height: MediaQuery.of(context).size.height * .7, using media quary
            // height: 100, static
            height: Get.height * .2, // using getx
            width: Get.width * .9,
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
