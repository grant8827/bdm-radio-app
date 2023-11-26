// ignore_for_file: camel_case_types, avoid_unnecessary_containers
import 'package:bdmradio/main.dart';
import 'package:bdmradio/widgets/chat.dart';
import 'package:bdmradio/widgets/video.dart';
import 'package:flutter/material.dart';
import 'package:radio_player/radio_player.dart';

class radioPlayer extends StatefulWidget {
  const radioPlayer({super.key});

  @override
  State<radioPlayer> createState() => _nameState();
}

class _nameState extends State<radioPlayer> {
  final RadioPlayer _radioPlayer = RadioPlayer();
  bool isPlaying = false;
  List<String>? metadata;

  @override
  void initState() {
    super.initState();
    initRadioPlayer();
  }

  void initRadioPlayer() {
    _radioPlayer.setChannel(
      title: 'Radio Player',
      url: 'https://aud1.sjamz.com/8014/stream',
      imagePath: 'assets/cover.jpg',
    );

    _radioPlayer.stateStream.listen((value) {
      setState(() {
        isPlaying = value;
      });
    });

    _radioPlayer.metadataStream.listen((value) {
      setState(() {
        metadata = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 48, 83),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 223, 241, 255),
        centerTitle: true,
        title: const Text('Radio'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/images/bdmlogo.png"),
              ),
              const SizedBox(
                height: 50,
              ),
              const SizedBox(height: 20),
              const Text(
                'BDM Radio',
                softWrap: false,
                overflow: TextOverflow.fade,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.white),
              ),
              Text(
                metadata?[1] ?? '247 none Stop Gospel',
                softWrap: false,
                overflow: TextOverflow.fade,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          isPlaying ? _radioPlayer.pause() : _radioPlayer.play();
        },
        tooltip: 'Control button',
        child: Icon(
          isPlaying ? Icons.pause_rounded : Icons.play_arrow_rounded,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 223, 241, 255),
        shadowColor: Colors.blueAccent,
        height: 90,
        child: Row(
          children: [
            const Spacer(),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyApp()),
                  );
                },
                child: const Column(
                  children: [
                    Icon(Icons.home),
                    Text('Home'),
                  ],
                )),
            const Spacer(),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const videoPlayer()),
                  );
                },
                child: const Column(
                  children: [
                    Icon(Icons.tv),
                    Text('tv'),
                  ],
                )),
            const Spacer(),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const chatPage()),
                  );
                },
                child: const Column(
                  children: [
                    Icon(Icons.chat),
                    Text('Chat'),
                  ],
                )),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
