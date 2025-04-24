import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uplift/controller/get.controller.dart';
import 'package:uplift/controller/music.controller.dart';
import 'package:uplift/view/musicplayer.dart';

class Music extends StatefulWidget {
  const Music({super.key});

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  Get1controller controller = Get.put(Get1controller());
  Musiccontroller _musiccontroller = Get.put(Musiccontroller());
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
                  controller.getColor,
                  BlendMode.color,
                ),
                image: AssetImage("assets/Background.png"),
                fit: BoxFit.fill,
              ),
            ),

            child: Padding(
              padding: EdgeInsets.only(top: 120, right: 5, left: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(() {
                    if (_musiccontroller.getMusic.isEmpty) {
                      return Center(child: CircularProgressIndicator());
                    } else {
                      return Expanded(
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 15,
                                mainAxisSpacing: 10,
                                mainAxisExtent: 135,
                              ),
                          itemCount: 10,

                          itemBuilder: (context, Index) {
                            var item = _musiccontroller.getMusic[Index];
                            return Card(
                              color: Colors.white,
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.5,
                                width: MediaQuery.of(context).size.width * 0.5,

                                child: ListTile(
                                  leading: Image.asset(
                                    "assets/ic_play.png",
                                    height: 50,
                                  ),
                                  onTap: () {
                                    Get.to(MusicPlayerExample(played: item));
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
