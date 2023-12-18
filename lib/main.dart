import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'music',
      home: PlayMusicSt(),
    );
  }
}

class PlayMusicSt extends StatefulWidget {
  const PlayMusicSt({super.key});

  @override
  State<PlayMusicSt> createState() => _PlayMusicStState();
}

class _PlayMusicStState extends State<PlayMusicSt> {
  final playMusic = AudioPlayer();

  void playFunct(String voice) {
    playMusic.stop();
    {
      playMusic.play(AssetSource('$voice.wav'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: buildDrumTextButton('bip', Colors.deepOrange),
                      ),
                      Expanded(
                        child: buildDrumTextButton('bongo', Colors.blue),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: buildDrumTextButton('clap1', Colors.green),
                      ),
                      Expanded(
                        child: buildDrumTextButton('crash', Colors.brown),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: buildDrumTextButton('clap2', Colors.pink),
                      ),
                      Expanded(
                        child: buildDrumTextButton('how', Colors.yellow),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: buildDrumTextButton('clap3', Colors.teal),
                      ),
                      Expanded(
                        child: buildDrumTextButton('oobah', Colors.white),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: buildDrumTextButton('ridebel', Colors.orangeAccent),
                      ),
                      Expanded(
                        child: buildDrumTextButton('woo', Colors.deepPurpleAccent),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }

  TextButton buildDrumTextButton(String voice, Color color) {
    return TextButton(
        style: TextButton.styleFrom(padding: EdgeInsets.all(8)),
        onPressed: () {
          playFunct(voice);
        },
        child: Container(
          color: color,
        ));
  }
}
