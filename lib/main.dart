import 'package:flutter/material.dart';
import 'package:back_calculation/information.dart';
void main() => runApp(BackSan());

class BackSan extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.purple,
        scaffoldBackgroundColor: Color(0xFFFCFFE7),

      ),
      home:InformationPage(),
    );
  }
}

//hello
//hello2