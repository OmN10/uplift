import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Get1controller extends GetxController {
  List ofColors = [
    Colors.red,
    Colors.blue,
    Colors.amber,
    Colors.brown,
    Colors.pink,
  ];

  var getColor = Colors.green;

  OnTap(var i) {
    getColor = i;
    update();
  }
}
