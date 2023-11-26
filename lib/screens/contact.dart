// ignore_for_file: unused_import, deprecated_member_use, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';

// ignore: camel_case_types
class contactPage extends StatelessWidget {
  const contactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            'assets/images/www.brodavonministries.png',
          ),
          const Padding(
            padding: EdgeInsets.only(
              bottom: 10.0,
              top: 10.0,
            ),
            child: Text(
              '📇 Contact Us',
              style: TextStyle(
                fontSize: 40,
                color: Color.fromARGB(255, 1, 25, 111),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            padding: const EdgeInsets.only(top: 70.0),
            child: const Text('''👤 Brother Davon Ministries''',
                style: TextStyle(
                  color: Color.fromARGB(255, 1, 25, 111),
                  fontSize: 18.0,
                )),
          ),

          TextButton(
            onPressed: () async {
              Uri website = Uri.parse('tel:718-280-9922');
              if (await launchUrl(website)) {
                //open website
              } else {
                //do nothing
              }
            },
            child: const Text(
              '📞 718-280-9922',
              style: TextStyle(
                color: Color.fromARGB(255, 1, 25, 111),
                decoration: TextDecoration.underline,
                fontSize: 18.0,
              ),
            ),
          ),
          TextButton(
            onPressed: () async {
              Uri website = Uri.parse('tel:347-242-6437');
              if (await launchUrl(website)) {
                //open website
              } else {
                //do nothing
              }
            },
            child: const Text('📞 347-242-6437',
                style: TextStyle(
                  color: Color.fromARGB(255, 1, 25, 111),
                  decoration: TextDecoration.underline,
                  fontSize: 18.0,
                )),
          ),
          TextButton(
            onPressed: () async {
              Uri website =
                  Uri.parse('mailto:gospelride@brodavonministries.com');
              if (await launchUrl(website)) {
                //open website
              } else {
                //do nothing
              }
            },
            child: const Text('📧 gospelride@brodavonministries.com',
                style: TextStyle(
                  color: Color.fromARGB(255, 1, 25, 111),
                  decoration: TextDecoration.underline,
                  fontSize: 18.0,
                )),
          ),

          TextButton(
            onPressed: () async {
              Uri website = Uri.parse('https://brodavonministries.com/');
              if (await launchUrl(website)) {
                //open website
              } else {
                //do nothing
              }
            },
            child: const Text('🌍 www.brodavonministries.com',
                style: TextStyle(
                  color: Color.fromARGB(255, 1, 25, 111),
                  decoration: TextDecoration.underline,
                  fontSize: 18.0,
                )),
          ),
        ],
      ),
    );
  }
}
