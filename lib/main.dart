import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_practice/homescreen.dart';
import 'package:getx_practice/navigation.dart';
import 'package:getx_practice/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomeScreen(),
        ),
        GetPage(
          name: '/second',
          page: () => SecondPage(),
        ),
        GetPage(
          name: '/navigation',
          page: () => NavigationScreen(),
        ),
      ],
    );
  }
}
