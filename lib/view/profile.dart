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
            width: MediaQuery.of(context).size.width / 2,
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                  controller.getColor, // Apply a blue tint with 50% opacity
                  BlendMode.color, // Use color blend mode
                ),
                image: AssetImage("white.png"),
              ),
            ),
          ),

          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.560,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/Profile.png")),
              ),
            ),
          ),

          // Positioned(
          //   top: MediaQuery.of(context).size.height * 0.15,
          //   child: Container(
          //     height: MediaQuery.of(context).size.height * 1,
          //     width: MediaQuery.of(context).size.width * 1,
          //     decoration: BoxDecoration(
          //       image: DecorationImage(
          //         image: AssetImage("assets/Rectangle Copy 2.png"),
          //       ),
          //     ),
          //   ),
          // ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
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
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     for (var i in controller.ofColors)
          //       InkWell(
          //         onTap: () {
          //           controller.OnTap(i);
          //           setState(() {});
          //         },
          //         child: Positioned(
          //           left: MediaQuery.of(context).size.width * -0.6,
          //           top: MediaQuery.of(context).size.height * 0.5,
          //           right: MediaQuery.of(context).size.width * 0.02,
          //           child: Container(
          //             width: MediaQuery.of(context).size.width * 0.170,
          //             height: MediaQuery.of(context).size.height / 10,
          //             decoration: BoxDecoration(
          //               color: i,

          //               // Assuming 'i' is a color
          //               image: DecorationImage(
          //                 image: AssetImage("assets/Blue 60.png"),
          //               ),
          //             ),
          //           ),
          //         ),
          //       ),
          //   ],
          // ),
          // Positioned(
          //   left: MediaQuery.of(context).size.width * -0.6,
          //   top: MediaQuery.of(context).size.height * 0.5,
          //   right: MediaQuery.of(context).size.width * 0.02,
          //   child: Container(
          //     width: MediaQuery.of(context).size.width * 0.170,
          //     height: MediaQuery.of(context).size.height / 10,
          //     decoration: BoxDecoration(
          //       image: DecorationImage(
          //         image: AssetImage("assets/Blue 60.png"),
          //         scale: 1.4,
          //       ),
          //     ),
          //     child: Column(
          //       children: [
          //         for (var i in controller.ofColors)
          //           InkWell(
          //             onTap: () {
          //               controller.OnTap(i);
          //               setState(() {});
          //             },
          //             child: Container(
          //               // Ensure InkWell has a child
          //               width: 50,
          //               height: 50,
          //               color: i, // Assuming 'i' is a color
          //             ),
          //           ),
          //       ],
          //     ),
          //   ),
          // ),

          // Positioned(
          //   left: MediaQuery.of(context).size.width * -0.01,
          //   top: MediaQuery.of(context).size.height * 0.5,
          //   right: MediaQuery.of(context).size.width * 0.10,
          //   child: Container(
          //     width: MediaQuery.of(context).size.width * 0.170,
          //     height: MediaQuery.of(context).size.height / 10,
          //     decoration: BoxDecoration(
          //       image: DecorationImage(
          //         image: AssetImage("assets/Orange 60.png"),
          //         scale: 1.4,
          //       ),
          //     ),
          //   ),
          // ),
          // Positioned(
          //   left: MediaQuery.of(context).size.width * 0.5,
          //   top: MediaQuery.of(context).size.height * 0.5,
          //   right: MediaQuery.of(context).size.width * 0.10,
          //   child: Container(
          //     width: MediaQuery.of(context).size.width * 0.170,
          //     height: MediaQuery.of(context).size.height / 10,
          //     decoration: BoxDecoration(
          //       image: DecorationImage(
          //         image: AssetImage("assets/Pink 60.png"),
          //         scale: 1.4,
          //       ),
          //     ),
          //   ),
          // ),
          // Positioned(
          //   left: MediaQuery.of(context).size.width * 0.2,
          //   top: MediaQuery.of(context).size.height * 0.61,
          //   right: MediaQuery.of(context).size.width * 0.30,
          //   child: Container(
          //     width: MediaQuery.of(context).size.width * 0.170,
          //     height: MediaQuery.of(context).size.height / 10,
          //     decoration: BoxDecoration(
          //       image: DecorationImage(
          //         image: AssetImage("assets/Pink 60.png"),
          //         scale: 1.4,
          //       ),
          //     ),
          //   ),
          // ),
          // Positioned(
          //   left: MediaQuery.of(context).size.width * -0.3,
          //   top: MediaQuery.of(context).size.height * 0.61,
          //   right: MediaQuery.of(context).size.width * 0.30,
          //   child: Container(
          //     width: MediaQuery.of(context).size.width * 0.170,
          //     height: MediaQuery.of(context).size.height / 10,
          //     decoration: BoxDecoration(
          //       image: DecorationImage(
          //         image: AssetImage("assets/Purple 60.png"),
          //         scale: 1.4,
          //       ),
          //     ),
          //   ),
          // ),
          // Positioned(
          //   left: MediaQuery.of(context).size.width * 0.5,
          //   top: MediaQuery.of(context).size.height * 0.61,
          //   right: MediaQuery.of(context).size.width * 0.11,
          //   child: Container(
          //     width: MediaQuery.of(context).size.width * 0.120,
          //     height: MediaQuery.of(context).size.height / 10,
          //     decoration: BoxDecoration(
          //       image: DecorationImage(
          //         image: AssetImage("assets/green 50.png"),
          //         scale: 1.2,
          //       ),
          //     ),
          //   ),
          // ),
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
