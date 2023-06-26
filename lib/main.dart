import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false, 
        home: BallPage(),
      ),
    );

// Represents the main page of the app
class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Ask Me Anything"),
      ),
      body: Ball(),  
    );
  }
}

// Represents the Magic 8-Ball widget
class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

// State class for the Ball widget
class _BallState extends State<Ball> {
  int ballNumber = 1; // Current ball image number

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  print("$ballNumber"); // Print the current ball number to the console
                  ballNumber = Random().nextInt(5) + 1; // Generate a random ball number between 1 and 5
                });
              },
              child: Image(
                image: AssetImage('images/ball$ballNumber.png'), // Display the image of the ball based on ballNumber
              ),
            ),
          ),
        ],
      ),
    );
  }
}
