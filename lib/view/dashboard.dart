import 'package:flutter/material.dart';
import 'package:uplift/view/profile.dart';
import 'package:uplift/view/quotes.dart';
import 'package:uplift/view/story.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: Container(
          color: const Color.fromARGB(255, 201, 228, 215),
          child: TabBar(
            indicatorColor: Colors.black,
            unselectedLabelColor: const Color.fromARGB(136, 41, 36, 36),
            labelColor: Colors.black,
            tabs: [
              Tab(text: "Quotes", icon: Icon(Icons.message, size: 25)),
              Tab(text: "Stories", icon: Icon(Icons.book, size: 25)),
              Tab(text: "Profile", icon: Icon(Icons.person, size: 25)),
            ],
          ),
        ),
        body: TabBarView(children: [Quotes(), Story(), Profile()]),
      ),
    );
  }
}
