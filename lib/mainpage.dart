import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const kMainColour = Color(0xFF4DBEDC);
const kIconColour = Colors.black;
const kBackColour = Color(0xFFFCFFE7);
const kFourheight = 60.0;

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

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
      _hour = (_minutes/60).floor();
      _minutes -= (_hour * 60);
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
      appBar: AppBar(
        title: Text('SeaThrough'),
        centerTitle: true,
        backgroundColor: kMainColour,
        leading: Icon(Icons.menu)
      ),

      //右側？？？
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 70.0,
              child: DrawerHeader(
                child: Text(
                  'Sea Through',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                decoration: BoxDecoration(
                  color: kMainColour,
                ),
              ),
            ),
            ListTile(
              title: Text('Sea Through1'),
              onTap: () {
                // setState(() => _city = 'Los Angeles, CA');
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Sea Through2'),
              onTap: () {
                // setState(() => _city = 'Los Angeles, CA');
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Sea Through3'),
              onTap: () {
                // setState(() => _city = 'Los Angeles, CA');
                Navigator.pop(context);
              },
            ),

          ],
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                        child: Container(
                          child: Image.asset(
                            'images/penguins_opa.png',
                          ),
                          width: 140,
                          height: 120,
                          decoration: BoxDecoration(
                            color: kBackColour,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                child: Center(
                                  child: Text('早稲田大学',
                                    style: TextStyle(
                                      color: Colors.white,

                                    ),),
                                ),
                                width: 140,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: kMainColour,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              SizedBox(height: 1.0,),
                              Container(
                                child: Image.asset(
                                  'images/level_opa.png',
                                  // fit: BoxFit.contain,
                                ),
                                width: 140,
                                height: 80,
                                decoration: BoxDecoration(
                                  color: kBackColour,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )

          ),
          //2行め
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
            child: Container(
              child: Image.asset(
                'images/weekly_todo.png',
                // fit: BoxFit.contain,
              ),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: kBackColour,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          //三行目
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
            child: Container(
              child: Center(
                  child: Text(
                    "${f.format(_hour)} : ${f.format(_minutes)} : ${f.format(_seconds)}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                    ),
                  ),
              ),
              width: double.infinity,
              height: 75,
              decoration: BoxDecoration(
                color: kMainColour,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 100,
                height: kFourheight,
                decoration: BoxDecoration(
                  color: kBackColour,
                ),
                child: Icon(
                  Icons.settings_outlined,
                  color: Colors.black,
                  size: 24,
                ),
              ),
              Container(
                child: Center(
                    child: TextButton(
                      onPressed: (){
                        _startTimer();
                      },
                      child: Text('stop/start'),
                    ),
                ),
                width: 150,
                height: kFourheight,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.circular(10),
                ),

              ),
              Container(
                width: 100,
                height: kFourheight,
                decoration: BoxDecoration(
                  color: kBackColour,
                ),
                child: Icon(
                  Icons.event_note,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ],
          ),
        ],
      )



    );
  }
}
