import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uplift/controller/get.controller.dart';
import 'package:uplift/controller/story.controller.dart';
import 'package:uplift/view/storyapi.dart';

class Story extends StatelessWidget {
  final Get1controller get1Controller = Get.put(Get1controller());
  final Apicontroller apiController = Get.put(Apicontroller());

  Story({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: get1Controller.getColor,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                  get1Controller.getColor,
                  BlendMode.color,
                ),
                image: AssetImage("assets/Background.png"),
                fit: BoxFit.fill,
              ),
            ),

            child: Padding(
              padding: EdgeInsets.only(top: 120, left: 5, right: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Obx(() {
                    if (apiController.getStory.isEmpty) {
                      return Center(child: CircularProgressIndicator());
                    } else {
                      return Expanded(
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                mainAxisExtent: 120,
                                crossAxisSpacing: 4,
                                mainAxisSpacing: 12,
                              ),
                          itemCount: apiController.getStory.length,
                          itemBuilder: (context, index) {
                            var item = apiController.getStory[index];
                            return Card(
                              color: Colors.white,
                              child: Container(
                                height:
                                 MediaQuery.of(context).size.height * 0.12,
                                width: MediaQuery.of(context).size.width * 0.12,

                                child: ListTile(
                                  leading: Image.asset(
                                    "assets/ic_book.png",

                                    height: 45,
                                  ),
                                  onTap: () {
                                    Get.off(StoryApi(story: item));
                                    

                                  },
                                  title: Text(item.title!),
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    }
                  }),
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.05,
            left: MediaQuery.of(context).size.width * 0.0004,
            child: Image.asset("assets/moti.png", width: 250),
          ),
        ],
      ),
    );
  }
}
