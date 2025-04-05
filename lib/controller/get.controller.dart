import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Get1controller extends GetxController {
  List ofColors = [
    Colors.red,
    Colors.blue,
    Colors.amber,
    Colors.pink,
    Colors.purple,
  ];

  var getColor = null;

  OnTap(var i) {
    getColor = i;
    update();
  }
}
