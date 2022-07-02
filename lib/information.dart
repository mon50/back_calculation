import 'package:flutter/material.dart';

class InformationPage extends StatefulWidget {

    @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('seeeeeee'),
      ),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: ElevatedButton(
          child: Text("決定"),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MainPage()));
          },
        ),
      ),
    );
  }
}
