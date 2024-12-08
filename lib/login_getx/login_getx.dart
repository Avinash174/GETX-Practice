import 'package:flutter/material.dart';

class LogInWithGetX extends StatefulWidget {
  const LogInWithGetX({super.key});

  @override
  State<LogInWithGetX> createState() => _LogInWithGetXState();
}

class _LogInWithGetXState extends State<LogInWithGetX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text('Log In GetX'),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
