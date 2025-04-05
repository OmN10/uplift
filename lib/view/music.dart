import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uplift/controller/get.controller.dart';

class Music extends StatefulWidget {
  const Music({super.key});

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  Get1controller controller = Get.put(Get1controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: controller.getColor,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 1,
            width: MediaQuery.of(context).size.width / 1,
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                  controller.getColor, // Apply a blue tint with 50% opacity
                  BlendMode.color, // Use color blend mode
                ),
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
                            "assets/ic_play.png",

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
