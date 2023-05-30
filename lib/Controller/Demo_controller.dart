import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DemoController extends GetxController {
  TextEditingController controller = TextEditingController();
  List allNumber = [];

  void demo() {
    allNumber.add(controller.text);
    update();
  }
}
