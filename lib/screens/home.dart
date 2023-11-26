// ignore: unused_import
import 'package:bdmradio/widgets/radio.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

// ignore: camel_case_types
class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            child: Image.asset(
              'assets/images/bdmlogo.png',
              width: double.infinity,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            alignment: Alignment.topCenter,
            width: double.infinity,
            padding: const EdgeInsets.only(top: 20.0, bottom: 5),
            margin: const EdgeInsets.all(10.0),
            child: const Center(
              child: Text(
                'Welcome To',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Color.fromARGB(
                      255, 0, 84, 101), // insert your font size here
                ),
              ),
            ),
          ),
          Text(
            "BDM RADIO",
            style: TextStyle(
              fontSize: 60,
              foreground: Paint()
                ..shader = ui.Gradient.linear(
                  const Offset(28, 10),
                  const Offset(4, 20),
                  <Color>[
                    const Color.fromARGB(255, 0, 155, 186),
                    const Color.fromARGB(255, 4, 27, 102),
                  ],
                ),
            ),
            // like <h1> in HTML
          ),
          // ignore: prefer_const_constructors
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextButton(
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
                  Text('Go Live On Air'),
                  Icon(Icons.play_arrow),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          // ignore: prefer_const_constructors
        ],
      ),
    );
  }
}
