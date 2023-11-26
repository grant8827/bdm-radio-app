// ignore_for_file: unused_local_variable, avoid_print, deprecated_member_use, avoid_web_libraries_in_flutter, unused_label, unused_field, sort_child_properties_last, camel_case_types
import 'package:bdmradio/screens/about.dart';
import 'package:bdmradio/screens/contact.dart';
import 'package:bdmradio/screens/home.dart';
import 'package:bdmradio/screens/schedule.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'BDM Radio';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: firstPage(title: appTitle),
    );
  }
}

class firstPage extends StatefulWidget {
  const firstPage({super.key, required this.title});

  final String title;

  @override
  State<firstPage> createState() => _HomePageState();
}

class _HomePageState extends State<firstPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    homePage(),
    aboutPage(),
    schedulePage(),
    contactPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 223, 241, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 2, 50, 89),
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 255, 255, 255),
          size: 30.0,
        ),
        title: const Text(
          'BDM RADIO',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Share.share(
                    'https://play.google.com/store/apps/details?id=com.bdmradio&pcampaignid=web_share');
              },
              icon: const Icon(Icons.share)),
        ],
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Column(children: [
                ClipRRect(
                  child: Image.asset(
                    "assets/images/bdmlogo.png",
                    width: 100,
                    height: 100,
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),
                const Text(
                  'BDM Radio 24/7 none stop Gospel',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                  ),
                ),
              ]),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 2, 50, 89),
              ),
            ),
            ListTile(
              selectedTileColor: const Color.fromARGB(255, 0, 212, 254),
              leading: const Icon(
                Icons.home,
                size: 30.0,
                color: Color.fromARGB(255, 2, 50, 89),
              ),
              title: const Text(
                'Home',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              selected: _selectedIndex == 0,
              onTap: () {
                // Update the state of the app
                _onItemTapped(0);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              selectedTileColor: const Color.fromARGB(255, 0, 212, 254),
              leading: const Icon(
                Icons.info,
                size: 30.0,
                color: Color.fromARGB(255, 2, 50, 89),
              ),
              title: const Text(
                'About',
                style: TextStyle(
                    fontSize: 20.0, color: Color.fromARGB(255, 0, 0, 0)),
              ),
              selected: _selectedIndex == 1,
              onTap: () {
                // Update the state of the app
                _onItemTapped(1);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              selectedTileColor: const Color.fromARGB(255, 0, 212, 254),
              leading: const Icon(
                Icons.schedule,
                size: 30.0,
                color: Color.fromARGB(255, 2, 50, 89),
              ),
              title: const Text(
                'Schedule',
                style: TextStyle(
                    fontSize: 20.0, color: Color.fromARGB(255, 0, 0, 0)),
              ),
              selected: _selectedIndex == 2,
              onTap: () {
                // Update the state of the app
                _onItemTapped(2);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              selectedTileColor: const Color.fromARGB(255, 0, 212, 254),
              leading: const Icon(
                Icons.contacts,
                size: 30.0,
                color: Color.fromARGB(255, 2, 50, 89),
              ),
              title: const Text(
                'Contact',
                style: TextStyle(
                    fontSize: 20.0, color: Color.fromARGB(255, 0, 0, 0)),
              ),
              selected: _selectedIndex == 3,
              onTap: () {
                // Update the state of the app
                _onItemTapped(3);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            const Divider(
              color: Color.fromARGB(255, 2, 50, 89),
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  margin: const EdgeInsets.only(
                    left: 10.0,
                    bottom: 20.0,
                  ),
                  child: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.facebook,
                        color: Color.fromARGB(255, 0, 123, 255),
                        size: 30.0,
                      ),
                      onPressed: () async {
                        Uri facebook = Uri.parse(
                            'https://www.facebook.com/photo/?fbid=372857482845588&set=a.372857546178915');
                        if (await launchUrl(facebook)) {
//dialer open
                        } else {
                          //do nothing
                        }
                      }),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(left: 20.0, bottom: 20.0),
                  child: IconButton(
                      padding: const EdgeInsets.all(10.0),
                      icon: const Icon(
                        FontAwesomeIcons.youtube,
                        color: Color.fromARGB(255, 196, 0, 0),
                        size: 30.0,
                      ),
                      onPressed: () async {
                        Uri youtube = Uri.parse(
                            'https://www.youtube.com/channel/UCTDB9stnPTy51hIgLWvSpuQ');
                        if (await launchUrl(youtube)) {
//dialer open
                        } else {
                          //do nothing
                        }
                      }),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20.0, bottom: 20.0),
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      padding: const EdgeInsets.all(10.0),
                      icon: const Icon(
                        FontAwesomeIcons.instagram,
                        color: Color.fromARGB(255, 196, 0, 134),
                        size: 30.0,
                      ),
                      onPressed: () async {
                        Uri instagram = Uri.parse(
                            'https://www.instagram.com/davon_richards/?hl=en');
                        if (await launchUrl(instagram)) {
//dialer open
                        } else {
                          //do nothing
                        }
                      }),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10.0, bottom: 20.0),
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      padding: const EdgeInsets.all(10.0),
                      icon: const Icon(
                        FontAwesomeIcons.twitter,
                        color: Color.fromARGB(255, 0, 166, 255),
                        size: 30.0,
                      ),
                      onPressed: () async {
                        Uri twitter = Uri.parse(
                            'https://twitter.com/i/flow/login?redirect_after_login=%2Fbrotherdavon');
                        if (await launchUrl(twitter)) {
//dialer open
                        } else {
                          //do nothing
                        }
                      }),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 239, 215, 0),
                  foregroundColor: Colors.black,
                ),
                onPressed: () async {
                  Uri twitter = Uri.parse('https://brodavonministries.com/');
                  if (await launchUrl(twitter)) {
//dialer open
                  } else {
                    //do nothing
                  }
                },
                child: const Text('Donate'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 2, 50, 89),
                  foregroundColor: Colors.white,
                ),
                onPressed: () async {
                  Uri twitter = Uri.parse('https://brodavonministries.com/');
                  if (await launchUrl(twitter)) {
//dialer open
                  } else {
                    //do nothing
                  }
                },
                child: const Text('Website'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
