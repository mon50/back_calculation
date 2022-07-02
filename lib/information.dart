import 'package:back_calculation/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:select_form_field/select_form_field.dart';

class InformationPage extends StatefulWidget {

  @override
  State<InformationPage> createState() => _InformationPageState();
}

final List<Map<String, dynamic>> _items = [
  {
    'value': '0',
    'label': '和歌山県立医科大学 ',
  },
  {
    'value': '1',
    'label': '和歌山大学',
  },
  {
    'value': '2',
    'label': '和光大学',
  },
  {
    'value': '3',
    'label': '早稲田大学',
  },
  {
    'value': '4',
    'label': '稚内北星学園大学',
  },
  {
    'value': '5',
    'label': '和洋女子大学',
  },
];


class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('seeeeeee'),
      ),
      body: Column(
        children:<Widget>[
          Center(
            child:Container(
              height:100,
              width:200,
              child: Column(
                children: <Widget>[
                  Text('ニックネーム'),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      child: TextFormField(),
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: kMainColour,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
              color: Colors.white,
            ) ,
          ),
          SelectFormField(
            type: SelectFormFieldType.dropdown, // or can be dialog
            initialValue: 'circle',
            labelText: '大学',
            items: _items,
            onChanged: (val) => print(val),
            onSaved: (val) => print(val),
          ),
          Center(
            child:Container(
              height:100,
              width:200,
              child:TextFormField(),
              color: Colors.lightBlueAccent,
            ) ,
          ),



          Align(
            alignment: Alignment.bottomCenter,
            child:ElevatedButton(
              child: Text("MainPage"),
              onPressed: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MainPage())
                );
              },
            )
          ),
        ],
      ),
    );
  }
}

