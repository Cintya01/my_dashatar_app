import 'dart:math';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //int counter = 0;
  // Color browncolor = Colors.green;
  // Color temp = Colors.black;
  // Color yellowcolor = Colors.yellow;

  List<Color> colours = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.pink,
    Colors.brown,
    Colors.teal,
    Colors.grey,
  ];

  int appBarColorIndex = 0;
  int bodyColorIndex = 0;

  Random random = Random();

  List<String> playlist = [
    "assets/audio/Kick.wav",
    "assets/audio/Snare.wav",
    "assets/audio/Ride.wav",
    "assets/audio/Tom.wav",
  ];
  int playlistIndex = 0;

  late AudioPlayer player;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colours[appBarColorIndex],
        centerTitle: true,
        title: IconButton(
            onPressed: () {
              setState(() {
                playlistIndex = random.nextInt(4);
                
              });
            },
            icon: const Icon(Icons.refresh, color: Colors.white)),
      ),
      backgroundColor: colours[bodyColorIndex],
      body: MaterialButton(
        child: Center(
          child: Image.asset('assets/img/dashatar.png'),
        ),
        onPressed: () {
          setState(() {
            //counter++;
            player.setAsset(playlist[playlistIndex]);
            player.play();
            appBarColorIndex = random.nextInt(colours.length);
            bodyColorIndex = random.nextInt(colours.length);
          });
        },
      ),
    );
  }
}
