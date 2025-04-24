import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:uplift/modal/music.modal.dart';

class MusicPlayerExample extends StatefulWidget {
  Example1 played;
  MusicPlayerExample({required this.played, super.key});

  @override
  State<MusicPlayerExample> createState() => _MusicPlayerExampleState();
}

class _MusicPlayerExampleState extends State<MusicPlayerExample> {
  final player = AudioPlayer();

  playMusic() async {
    await player.play(UrlSource(widget.played.file!));
    setState(() {});
  }

  stopMusic() async {
    await player.stop();
    setState(() {});
  }

  @override
  void initState() {
    playMusic();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.played.title!)),

      body: Column(
        children: [
          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  stopMusic();
                  setState(() {});
                },
                child: Icon(Icons.stop),
              ),

              SizedBox(width: 10),

              ElevatedButton(
                onPressed: () {
                  playMusic();
                  setState(() {});
                },
                child: Icon(Icons.play_arrow),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
