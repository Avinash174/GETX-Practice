import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';

class WithoutGetx extends StatefulWidget {
  const WithoutGetx({super.key});

  @override
  State<WithoutGetx> createState() => _WithoutGetxState();
}

class _WithoutGetxState extends State<WithoutGetx> {
  int a = 1;
  int x = 1;

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      x++;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    log('Build Rebuild From Here');
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Without GetX Increment',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              x.toString(),
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              a.toString(),
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          a++;
          setState(() {});
        },
      ),
    );
  }
}
