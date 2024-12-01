import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class ExampleTwo extends GetxController {
  RxDouble opcaity = .4.obs;

  setOpacity(double value) {
    opcaity.value = value;
  }
}
