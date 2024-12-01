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

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      a++;
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
        child: Text(
          a.toString(),
          style: const TextStyle(
            fontSize: 20,
          ),
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
