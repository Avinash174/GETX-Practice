import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXLan extends StatefulWidget {
  const GetXLan({super.key});

  @override
  State<GetXLan> createState() => _GetXLanState();
}

class _GetXLanState extends State<GetXLan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Language'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OutlinedButton(
                onPressed: () {
                  Get.updateLocale(const Locale('en', 'US'));
                },
                child: const Text('English'),
              ),
              OutlinedButton(
                onPressed: () {
                  Get.updateLocale(const Locale('ur', 'PK'));
                },
                child: const Text('Urdu'),
              )
            ],
          )
        ],
      ),
    );
  }
}
