import 'package:flutter/material.dart';
import 'package:uplift/view/dashboard.dart';

class Dailyquote extends StatefulWidget {
  const Dailyquote({super.key});

  @override
  State<Dailyquote> createState() => _DailyquoteState();
}

class _DailyquoteState extends State<Dailyquote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 1.1,
              width: MediaQuery.of(context).size.width / 1,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Background.png"),
                  fit: BoxFit.fill,
                ),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 180),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "Last things - want to send me daily quotes",
                        style: TextStyle(fontSize: 27, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 100),
                  Image.asset("assets/Mobile.png"),
                  SizedBox(
                    width: 250,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Dashboard()),
                        );
                      },

                      child: Text("YES PLEASE", style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 300),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Dashboard(),
                                ),
                              );
                            },

                            icon: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: -18,
              child: Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/moti.png")),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
