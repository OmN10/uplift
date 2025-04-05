
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:uplift/controller/get.controller.dart';
import 'package:uplift/view/story.dart';

class ApiController extends Get1controller {
  RxList<Story> getStories = <Story>[].obs;

  final dio = Dio();
  Story? exp;

  fetchApiWithDio() async {
    var resp = await dio.get(
      "https://mapi.trycatchtech.com/v3/motivational_story/motivational_story_stories",
    );

  }
}
