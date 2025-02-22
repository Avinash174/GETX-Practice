import 'dart:io';

import 'package:flutter/material.dart';

class FavoriteWithoutGetX extends StatefulWidget {
  const FavoriteWithoutGetX({super.key});

  @override
  State<FavoriteWithoutGetX> createState() => _FavoriteWithoutGetXState();
}

class _FavoriteWithoutGetXState extends State<FavoriteWithoutGetX> {
  List<String> fruitList = [
    'Apple',
    'Banana',
    'Strawberry',
    'Blueberry',
    'Grapes',
    'Mango',
    'Pineapple',
    'Watermelon',
    'Orange',
    'Avocado',
  ];
  List<String> tempFruitList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text(
          'Favourite WithoutGetx App',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: fruitList.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  setState(() {
                    tempFruitList.add(
                      fruitList[index].toString(),
                    );
                  });
                },
                title: Text(
                  fruitList[index].toString(),
                ),
                trailing: Icon(
                  Platform.isAndroid ? Icons.favorite : Icons.favorite_outlined,
                  color: tempFruitList.contains(
                    fruitList[index].toString(),
                  )
                      ? Colors.red
                      : Colors.white,
                ),
              ),
            );
          }),
    );
  }
}
