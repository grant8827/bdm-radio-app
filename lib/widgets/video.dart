// ignore_for_file: camel_case_types

import 'package:bdmradio/widgets/radio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class videoPlayer extends StatefulWidget {
  const videoPlayer({super.key});

  @override
  State<videoPlayer> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<videoPlayer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 223, 241, 255),
          title: const Text('Video'),
          actions: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 2, 50, 89),
                foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                textStyle: const TextStyle(
                  fontSize: 20,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const radioPlayer()),
                );
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_back),
                ],
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/bdmlogo.png'),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'BDM Radio',
                softWrap: false,
                overflow: TextOverflow.fade,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Color.fromARGB(255, 0, 0, 0)),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'BDM TV ',
                softWrap: false,
                overflow: TextOverflow.fade,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(255, 0, 0, 0)),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: HtmlWidget(
                    '<iframe width="420" height="315"src="https://streamjamz.tv/player/live/davon/ao2u1oy9"  allowfullscreen="0"></iframe>'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
