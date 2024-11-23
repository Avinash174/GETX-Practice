import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text(
          'Getx Tutorial',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: 'GetX Dialog',
                  middleText: 'Dialog Box With Getx',
                  contentPadding: const EdgeInsets.all(20),
                  confirm: TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text('Yes'),
                  ),
                  cancel: TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text('No'),
                  ),
                  content: Column(
                    children: [
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                    ],
                  ),
                );

                if (kDebugMode) {
                  print('Yes It A $kDebugMode');
                } else {
                  print('Its a Other Mode');
                }
              },
              child: const Text(
                'Dilog Alert In GetX',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.redAccent,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('GetX BottomSheet'),
              subtitle: Text('GetX Dialog Box'),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(
                        15,
                      ),
                      color: Colors.blueAccent,
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          onTap: () {
                            print("Button press light");
                            Get.changeTheme(
                              ThemeData.light(),
                            );
                          },
                          leading: const Icon(
                            Icons.light_mode,
                          ),
                          title: Text(
                            'Light Mode',
                          ),
                        ),
                        ListTile(
                          onTap: () {
                            print("Button press dark");
                            Get.changeTheme(ThemeData.dark());
                          },
                          leading: const Icon(
                            Icons.dark_mode,
                          ),
                          title: const Text('Dark Mode'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            'Message',
            'Welcome',
            duration: const Duration(
              seconds: 2,
            ),
            colorText: Colors.white,
            backgroundColor: Colors.blue,
            snackPosition:
                Platform.isAndroid ? SnackPosition.TOP : SnackPosition.BOTTOM,
            icon: Icon(
              Platform.isIOS ? Icons.emoji_emotions_sharp : Icons.chat,
              color: Colors.white,
            ),
          );
        },
      ),
    );
  }
}
