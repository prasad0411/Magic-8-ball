import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BallPage(),
      ),
    );

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

    class Ball extends StatefulWidget {
      @override
      _BallState createState() => _BallState();
    }
    
    class _BallState extends State<Ball> {

      int ballNumber= 1;

      @override
      Widget build(BuildContext context) {
        return Center(
          child: Row( 
            children: [

             Expanded(
              
              // ignore: deprecated_member_use
              child: FlatButton(onPressed:(){
                setState(() {
                  print("$ballNumber");
                   ballNumber= Random().nextInt(5)+1;
                   }, );
                    },

                   child: Image(
                    image: AssetImage('images/ball$ballNumber.png')
                    )) 
              )
            ]
          )  
        );
      }
    }