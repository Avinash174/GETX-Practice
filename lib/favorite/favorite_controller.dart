import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxList<String> fruitList = [
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
  ].obs;
  RxList<dynamic> tempFruitList = [].obs;

  addToFavorite(String val) {
    tempFruitList.add(val);
  }

  removeToFavorite(String val) {
    tempFruitList.remove(val);
  }
}
