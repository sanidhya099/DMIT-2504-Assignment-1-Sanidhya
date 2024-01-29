// ignore_for_file: use_key_in_widget_constructors, todo

import 'dart:math';

import 'package:flutter/material.dart';

//https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e

//This app makes use of the Row, Column,
//Expanded, Padding, Transform, Container,
//BoxDecoration, BoxShape, Colors,
//Border, Center, Align, Alignment,
//EdgeInsets, Text, and TextStyle Widgets
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //first level widget of Material Design
      home: Scaffold(
        //default route
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text("App1 - UI Layout"),
          backgroundColor: Colors.blue,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  color: Colors.yellow[700],
                  height: 100,
                  width: 100,
                  child: const Text('Container 1'),
                  padding: const EdgeInsets.all(16.0),
                  
                ),
                Transform.rotate(
                  angle: pi / 4,
                  child: Container(
                    color: Colors.white,
                    height: 100,
                    width: 100,
                    child: const Text('Container 2'),
                    padding: const EdgeInsets.all(16.0),
                  ),
                ),
              ],
            ),
                  Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Expanded(
                 flex: 1,
                 child: Padding(
                   padding: const EdgeInsets.only(top: 8.0),
                   child: Container(
                     width: 100.0,
                     color: Colors.yellow,
                     child: const Align(
                       alignment: Alignment.bottomCenter,
                       child: Text('Container 3'),
                     ),
                   ),
                 ),
               ),
               const SizedBox(height: 20),
               Expanded(
                 flex: 1,
                 child: Padding(
                   padding:const EdgeInsets.only(bottom: 8.0),
                   child: Container(
                     width: 100.0,
                     color: Colors.lightBlue,
                     child: const Align(
                       alignment: Alignment.centerRight,
                       child: Text('Container 4'),
                     ),
                   ),
                 ),
               ),
             ],
           ),
            Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  child: const Text('Container 5', style: TextStyle(color: Colors.white)),
                  padding: const EdgeInsets.all(16.0),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                    height: 100,
                    width: 100,
                    child: const Text('Container 6', style: TextStyle(color: Colors.white)),
                    padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
