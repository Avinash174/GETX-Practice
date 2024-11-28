import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_practice/getx_hw.dart';
import 'package:getx_practice/homescreen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const HomeScreen(),
                  ),
                );
              },
              child: const Text(
                'Go To Next Screen Without GetX',
              ),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () {
                // Get.to(
                //   SecondPage(
                //     name: ' Avinash Welcome ',
                //   ),
                Get.toNamed('/second',
                    arguments: ['Avinash', 'Welcome Back Avinash']);
              },
              child: const Text(
                'Go To Next Screen With GetX',
              ),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () {
                // Get.toNamed('/getxhw');
                Get.to(GetXHW());
              },
              child: const Text(
                'Heigth & Weight',
              ),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () {
                Get.toNamed('getlocal');
              },
              child: const Text(
                'Language Change',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
