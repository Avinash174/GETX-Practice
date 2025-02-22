import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_practice/getx/another_example.dart';
import 'package:getx_practice/getx_hw.dart';
import 'package:getx_practice/getx_local.dart';
import 'package:getx_practice/language.dart';
import 'package:getx_practice/login_getx/login_getx.dart';
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
      home: const LogInWithGetX(),
      locale: const Locale('en', 'US'),
      translations: Language(),
      fallbackLocale: const Locale('en', 'us'),
      getPages: [
        GetPage(
          name: '/',
          page: () => const AnotherExampleGetX(),
        ),
        GetPage(
          name: '/second',
          page: () => SecondPage(),
        ),
        GetPage(
          name: '/navigation',
          page: () => const NavigationScreen(),
        ),
        GetPage(
          name: '/getxhw',
          page: () => const GetXHW(),
        ),
        GetPage(
          name: '/getlocal',
          page: () => const GetXLan(),
        ),
      ],
    );
  }
}
