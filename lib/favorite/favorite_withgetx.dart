import 'dart:io';

import 'package:flutter/material.dart';

class FavouriteGetx extends StatefulWidget {
  const FavouriteGetx({super.key});

  @override
  State<FavouriteGetx> createState() => _FavouriteGetxState();
}

class _FavouriteGetxState extends State<FavouriteGetx> {
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
        title: const Text(
          'Favorite With App',
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
