import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class FlareDemo extends StatefulWidget {
  @override
  _FlareDemoState createState() => _FlareDemoState();
}

class _FlareDemoState extends State<FlareDemo> {
  bool isOpen = false;
  AudioPlayer advancedPlayer;
  var animFile = "assets/Blankey.flr";
  @override

  void loadMusic() async {
    advancedPlayer = await AudioCache().play("barking.mp3");
  }
  void stopMusic() {
    advancedPlayer?.stop();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('Blankey and Lumi World'),
          centerTitle: true,
        ),
        body: GestureDetector(
            onTap: () {
              stopMusic();
              loadMusic();
              setState(() {
                isOpen = !isOpen;
                if (animFile == "assets/Lumi.flr") {
                  animFile = "assets/Blankey.flr";
                }
                else {
                  animFile = "assets/Lumi.flr";
                }
              });

            },
            child: FlareActor(
              animFile,
              animation: isOpen ? 'Untitled' : 'Untitled',
            ),
        )
    );

  }
}