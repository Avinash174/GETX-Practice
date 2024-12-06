import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/favorite/favorite_controller.dart';

class FavouriteGetx extends StatefulWidget {
  const FavouriteGetx({super.key});

  @override
  State<FavouriteGetx> createState() => _FavouriteGetxState();
}

class _FavouriteGetxState extends State<FavouriteGetx> {
  FavouriteController favouriteController = Get.put(FavouriteController());
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print('build');
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Favorite With App',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.pinkAccent,
      ),
      body: ListView.builder(
          itemCount: favouriteController.fruitList.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                  onTap: () {
                    setState(() {
                      if (favouriteController.tempFruitList.contains(
                          favouriteController.fruitList[index].toString())) {
                        favouriteController.removeToFavorite(
                            favouriteController.fruitList[index].toString());
                      } else {
                        favouriteController.addToFavorite(
                            favouriteController.fruitList[index].toString());
                      }
                    });
                  },
                  title: Text(
                    favouriteController.fruitList[index].toString(),
                  ),
                  trailing: Obx(
                    () => Icon(
                      Platform.isAndroid
                          ? Icons.favorite
                          : Icons.favorite_outlined,
                      color: favouriteController.tempFruitList.contains(
                        favouriteController.fruitList[index].toString(),
                      )
                          ? Colors.red
                          : Colors.white,
                    ),
                  )),
            );
          }),
    );
  }
}
