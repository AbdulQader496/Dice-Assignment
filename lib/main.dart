import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var imageArray = [
    'dice1.png',
    'dice2.png',
    'dice3.png',
    'dice4.png',
    'dice5.png',
    'dice6.png'
  ];
  int randomRollForDice1 = Random().nextInt(6);
  int randomRollForDice2 = Random().nextInt(6);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 50, 25, 50),
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 150),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Image.asset(
                'assets/lasPic.jpg',
                height: 160,
                width: 160,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Image.asset(
                'assets/' + imageArray[randomRollForDice1],
                height: 150,
                width: 150,
              ),
              Image.asset(
                'assets/' + imageArray[randomRollForDice2],
                height: 150,
                width: 150,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: RaisedButton(
              onPressed: changeImage,
              child: Text('Roll Dice'),
            ),
          )
        ]),
      ),
    );
  }

  void changeImage() {
    setState(() {
      randomRollForDice1 = Random().nextInt(6);
      randomRollForDice2 = Random().nextInt(6);
    });
  }
}
