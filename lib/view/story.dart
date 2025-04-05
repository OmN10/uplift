import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uplift/controller/get.controller.dart';
import 'package:uplift/controller/getx.api.controller.dart';

class Story extends StatefulWidget {
  const Story({super.key});

  @override
  State<Story> createState() => _StoryState();
}

class _StoryState extends State<Story> {
  ApiController controller = Get.put(ApiController());
  Get1controller controller1 = Get.put(Get1controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: controller1.getColor,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 1,
            width: MediaQuery.of(context).size.width / 1,
            decoration: BoxDecoration(
              image: DecorationImage(
                
                

                image: AssetImage("Background.png"),
                fit: BoxFit.fill,
              ),
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      color: Colors.white,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.5,

                        child: ListTile(
                          leading: Image.asset(
                            "assets/ic_book.png",

                            height: 50,
                          ),
                          title: Text("Omkar"),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: -10,
            child: Container(
              height: 200,
              width: 300,

              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/moti.png")),
              ),
            ),
          ),
          Positioned(
            top: 80,
            right: 15,
            child: Container(
              height: 70,
              width: 50,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/ic_add.png")),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
