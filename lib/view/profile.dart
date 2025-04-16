import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:uplift/controller/get.controller.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                image: AssetImage("assets/Background.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),

          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.720,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                    controller.getColor, // Apply a blue tint with 50% opacity
                    BlendMode.color, // Use color blend mode
                  ),
                  image: AssetImage("assets/Profile.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Choose Your Theme =>",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (var i in controller.ofColors) ...[
                        InkWell(
                          onTap: () {
                            controller.OnTap(i);
                            setState(() {});
                          },

                          child: Container(
                            height: 50,
                            width: 50,
                            child: CircleAvatar(backgroundColor: i),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),

          Positioned(
            right: MediaQuery.of(context).size.width * 1,
            top: MediaQuery.of(context).size.height * 0.5,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/moti.png")),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
