// main method, program entry
import 'dart:math';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  //In Flutter, most of the things we're going to be dealing with are
  //widgets. Widgets are the building blocks of a Flutter app's UI.
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //_MyAppState is a private class, only available in this file
  final List<String> restaurants = [
    'McDonald\'s',
    'Burger King',
    'KFC',
    'Subway Crackers',
    'Pizza Hut',
    'Domino\'s Pizza',
    'Starbucks Nairobi',
    'Dunkin Donuts',
    'Taco Bell',
    'Wendys',
    'Popeyes',
    'Chick-fil-A',
    'Panera Bread',
    'Chipotle',
    'Sonic Drive-In',
    'Dairy Queen',
    'Arbys',
    'Five Guys',
    'Panda Express',
    'Little Caesars',
    'Jimmy Johns',
    'Whataburger',
    'In-N-Out Burger',
    'Jack in the Box',
    'Carl\'s Jr.',
    'Hardee\'s',
    'White Castle',
    'Checkers',
    'Raising Cane\'s',
    'Zaxby\'s',
    'Bojangles',
    'Culver\'s',
    'Long John Silver\'s',
    'Del Taco',
    'El Pollo Loco',
    'Tim Hortons',
    'A&W',
    'Jersey Mike\'s',
    'Firehouse Subs',
    'Jason\'s Deli',
    'Qdoba',
    'Moe\'s Southwest Grill',
    'Noodles & Company',
    'Papa Murphy\'s',
    'Round Table Pizza',
    'Marco\'s Pizza',
    'Hungry Howie\'s',
    'Blaze Pizza',
    'MOD Pizza',
    'Papa Gino\'s',
    'Donatos Pizza',
    'California Pizza Kitchen',
    'Uno Pizzeria & Grill'
  ];
  int currentIndex = 99;
  void updateIndex() {
    final random = Random();
    final index = random.nextInt(restaurants.length);
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Maankuli Center',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('What are you looking for?'),
            if (currentIndex != 99)
              Text(
                restaurants[currentIndex],
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: updateIndex,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.orange,
                  textStyle: const TextStyle(color: Colors.white),
                  padding: const EdgeInsets.all(16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text(
                  currentIndex == 99 ? 'Find a Restaurant' : 'Next Restaurant',
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
          ],
        )),
      ),
    );
  }
}
