import 'package:flutter/material.dart';

class FavoriteWithoutGetX extends StatefulWidget {
  const FavoriteWithoutGetX({super.key});

  @override
  State<FavoriteWithoutGetX> createState() => _FavoriteWithoutGetXState();
}

class _FavoriteWithoutGetXState extends State<FavoriteWithoutGetX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite App'),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return ListTile();
      }),
    );
  }
}
