import 'package:flutter/material.dart';
class AnnualCalender extends StatefulWidget {

   @override
  State<AnnualCalender> createState() => _AnnualCalenderState();
}

class _AnnualCalenderState extends State<AnnualCalender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('seeeeeee'),
      ),
      body: Center(
        child: Image.asset('images/calender.jpg'),
      ),
    );
  }
}
