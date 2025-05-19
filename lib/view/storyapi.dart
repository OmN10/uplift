import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uplift/modal/stories.modal.dart';
import 'package:uplift/view/dashboard.dart';

class StoryApi extends StatelessWidget {
  final Example story;

  const StoryApi({super.key, required this.story});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(story.title ?? "Story"),
        leading: IconButton(
          onPressed: () {
            Get.to(Dashboard());
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(story.image!),
                SizedBox(height: 15),
                Text(
                  story.title ?? "",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 11),
                Text(story.description ?? "", style: TextStyle(fontSize: 15)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
