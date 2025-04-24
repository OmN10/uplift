import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:uplift/modal/music.modal.dart';

class Musiccontroller extends GetxController {
  RxList<Example1> getMusic = <Example1>[].obs;
  final dio = Dio();

  Future<void> fetchApi() async {
    try {
      var resp = await dio.get(
        "https://mapi.trycatchtech.com/v3/motivational_story/motivational_story_music",
      );

      if (resp.data != null) {
        getMusic.value = Example1.getMusics(jsonDecode(resp.data));
        update();

        // print(response);
      }
    } catch (e) {
      print("Error fetching API: $e");
    }
  }

  @override
  void onInit() {
    fetchApi();
    super.onInit();
  }
}
