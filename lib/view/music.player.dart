import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class MusicPlayer extends StatefulWidget {
  String url;
  MusicPlayer({required this.url, super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  final player = AudioPlayer(); // Create a player
  // Schemes: (https: | file: | asset: )

  playMusic() async {
    final duration = await player.setUrl(
      // Load a URL
      widget.url,
    );

    player.play();
    setState(() {});
  }

  @override
  void initState() {
    playMusic();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [

      ],
    );
  }
}
