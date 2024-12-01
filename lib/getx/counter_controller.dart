import 'dart:async';
import 'dart:developer';

import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 1.obs;
  RxInt timer = 1.obs;

  increment() {
    counter.value++;
    log('$counter.value');
  }
}
