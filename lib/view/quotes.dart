import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uplift/controller/get.controller.dart';
import 'package:uplift/controller/quotes.controller.dart';

class Quotes extends StatefulWidget {
  const Quotes({super.key});

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  final pageController = PageController(
    initialPage: 0,
    viewportFraction: 0.9,
    keepPage: true,
  );

  Quotescontroller controller1 = Get.put(Quotescontroller());
  Get1controller controller = Get.put(Get1controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: controller.getColor,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/Background.png"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  controller.getColor,
                  BlendMode.color,
                ),
              ),
            ),

            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Obx(() {
                if (controller1.getImage.isEmpty) {
                  return const Center(child: CircularProgressIndicator());
                }

                return PageView.builder(
                  controller: pageController,
                  itemCount: controller1.getImage.length,
                  itemBuilder: (context, index) {
                    final item = controller1.getImage[index];

                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 110,
                        horizontal: 10,
                      ),
                      child: Card(
                        elevation: 25,
                        color: Colors.white,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:
                              item.image != null
                                  ? Image.network(
                                    item.image!,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  )
                                  : CircularProgressIndicator(),
                        ),
                      ),
                    );
                  },
                );
              }),
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
