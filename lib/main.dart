import 'package:flutter/material.dart';

void main() => runApp(PerfectSeeThrough());

class PerfectSeeThrough extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.purple,
        scaffoldBackgroundColor: Colors.amber,

      ),
    );
  }
}