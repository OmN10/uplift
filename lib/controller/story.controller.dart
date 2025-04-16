import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:uplift/modal/stories.modal.dart';

class Apicontroller extends GetxController {
  RxList<Example> getStory = <Example>[].obs;
  final dio = Dio();

  fetchApi() async {
    try {
      var resp = await dio.get(
        "https://mapi.trycatchtech.com/v3/motivational_story/motivational_story_stories",
      );

      if (resp.data != null) {
        getStory.value = Example.getStories(jsonDecode(resp.data));

        update();
        print(getStory);
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
