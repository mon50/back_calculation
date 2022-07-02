import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// Checking
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _seconds = 00;
  int _minutes = 00;
  int _hour = 8;
  late Timer _timer;
  var f = NumberFormat("00");


  void _startTimer(){

    if (_hour > 0){
      _minutes = _hour * 60;
    }
    if (_minutes > 0){
      _seconds = _minutes * 60;
    }
    if (_seconds >60){
      _minutes = (_seconds/60).floor();
      _seconds -= (_minutes * 60);
    }

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_seconds > 0){
          _seconds--;
        }
        else {
          if (_minutes >0){
            _seconds = 59;
            _minutes--;
          }
          else {
            if (_hour >0){
              _minutes = 59;
              _hour--;
            }
            else {
              _timer.cancel();
              print("Timer Complete");
            }
          }
        }});
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${f.format(_hour)} : ${f.format(_minutes)} : ${f.format(_seconds)}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                onPressed: (){
                  _startTimer();
                },
                color: Colors.orange[300],
                shape: CircleBorder(
                    side: BorderSide(color: Colors.orange)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Text(
                    "Start",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
