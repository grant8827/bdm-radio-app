// ignore_for_file: camel_case_types

import 'package:bdmradio/widgets/radio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class chatPage extends StatefulWidget {
  const chatPage({super.key});

  @override
  State<chatPage> createState() => _chatPageState();
}

class _chatPageState extends State<chatPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widget from HTML',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 223, 241, 255),
          title: const Text('Chat'),
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
        body: const SingleChildScrollView(
          child: Column(
            children: [
              HtmlWidget(
                  '<iframe id="cboxmain3-3438461" src="https://www3.cbox.ws/box/?boxid=3438461&amp;boxtag=lnrrtw&amp;sec=main" name="cboxmain3-3438461" width="349px" height="270px" frameborder="0" marginwidth="0" marginheight="0" scrolling="auto"></iframe>'),
            ],
          ),
        ),
      ),
    );
  }
}
