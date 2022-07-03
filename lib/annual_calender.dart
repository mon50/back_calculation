import 'package:flutter/material.dart';

class AnnualCalender extends StatefulWidget {

   @override
  State<AnnualCalender> createState() => _AnnualCalenderState();
}
const kMainColour = Color(0xFF82CCC1);
class _AnnualCalenderState extends State<AnnualCalender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calender'),
        backgroundColor: kMainColour,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(
            child: Image.asset('images/yourcalender.png'),
          ),
          Center(
            child: Image.asset('images/passcalender.png'),
          ),

        ],
      ),
    );
  }
}
