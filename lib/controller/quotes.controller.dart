import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:uplift/modal/quotes.modal.dart';

class Quotescontroller extends GetxController {
  RxList<Example> getImage = <Example>[].obs;
  final dio = Dio();

  fetchApiWithDio() async {
    try {
      var resp1 = await dio.get(
        "https://mapi.trycatchtech.com/v3/motivational_story/motivational_story_image_quotes",
      );

      if (resp1.data != null) {
        getImage.value = Example.getImages(jsonDecode(resp1.data));
        print(getImage);
      }
    } catch (e) {
      print("Error fetching API: $e");
    }
  }

  @override
  void onInit() {
    fetchApiWithDio();
    super.onInit();
  }
}
