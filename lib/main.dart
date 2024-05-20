import 'package:flutter/material.dart';
import 'package:gradproj7/signup.dart';

//splash screen
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Jawla';
    return MaterialApp(
        title: appTitle,
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: const Text(appTitle),
            ),
            body: const SingleChildScrollView(
              child: Column(
                children: [
                  // ImageSection(
                  // image: 'images/amman.jpg',
                  //),
                  TitleSection(
                    name: 'Plan your trip with Jawla',
                  ),
                ],
              ),
            )));
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignupScreen()));
                  },
                  /*2*/
                  child: Icon(Icons.directions_bus,
                      color: Colors.pink[500], size: 330),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 0, right: 40, left: 40),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          /*3*/
        ],
      ),
    );
  }
}
