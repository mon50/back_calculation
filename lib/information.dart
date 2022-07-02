import 'package:back_calculation/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:select_form_field/select_form_field.dart';

class InformationPage extends StatefulWidget {

  @override
  State<InformationPage> createState() => _InformationPageState();
}


bool button_1 = false;
bool button_2 = false;
bool button_3 = false;
bool button_4 = false;

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

final List<Map<String, dynamic>> _items_2 = [
  {
    'value': '0',
    'label': '政治経済学部 ',
  },
  {
    'value': '1',
    'label': '法学部',
  },
  {
    'value': '2',
    'label': '教育学部',
  },
  {
    'value': '3',
    'label': '商学部',
  },
  {
    'value': '4',
    'label': '社会科学部',
  },
  {
    'value': '5',
    'label': '人間科学部',
  },
  {
    'value': '6',
    'label': 'スポーツ科学部',
  },
  {
    'value': '7',
    'label': '国際教養学部',
  },
  {
    'value': '8',
    'label': '文化構想学部',
  },
  {
    'value': '9',
    'label': '文学部',
  },
  {
    'value': '10',
    'label': '基幹理工学部',
  },
  {
    'value': '11',
    'label': '創造理工学部',
  },
  {
    'value': '12',
    'label': '先進理工学部',
  },
];

final List<Map<String, dynamic>> _items_3 = [
  {
    'value': '0',
    'label': '教育学科',
  },
  {
    'value': '1',
    'label': '国語国文学科',
  },
  {
    'value': '2',
    'label': '英語英文学科',
  },
  {
    'value': '3',
    'label': '社会科',
  },
  {
    'value': '4',
    'label': '理学科',
  },
  {
    'value': '5',
    'label': '数学科',
  },
  {
    'value': '6',
    'label': '複合文化学科',
  },
];


class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('seeeeeee'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children:<Widget>[
            Center(
              child:Center(
                child:Container(
                  height:100,
                  width:200,
                  child: Column(
                    children: <Widget>[
                      Text('ニックネーム'),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ) ,
              ),
            ),
            Center(
              child:Container(
                height:100,
                width:200,
                child: Column(
                  children: <Widget>[
                    Text('アクセスキー'),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ) ,
            ),
            Center(
              child:Center(
                child:Container(
                  height:100,
                  width:200,
                  child: Column(
                    children: <Widget>[
                      Text('学校の頭文字'),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ) ,
              ),
            ),
            SelectFormField(
              type: SelectFormFieldType.dropdown, // or can be dialog
              initialValue: 'circle',
              labelText: '大学',
              items: _items,
              onChanged: (val) => print(val),
              onSaved: (val) => print(val),
            ),
            SelectFormField(
              type: SelectFormFieldType.dropdown, // or can be dialog
              initialValue: 'circle',
              labelText: '学部',
              items: _items_2,
              onChanged: (val) => print(val),
              onSaved: (val) => print(val),
            ),

            SelectFormField(
              type: SelectFormFieldType.dropdown, // or can be dialog
              initialValue: 'circle',
              labelText: '学科',
              items: _items_3,
              onChanged: (val) => print(val),
              onSaved: (val) => print(val),
            ),

            //コースボタン
            Text('コース選択'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                Container(
                  child: RaisedButton(
                    child: new Text('ライト'),
                    textColor: Colors.white,
                    color: button_1 ? Colors.blue : Colors.black,
                    onPressed: () => {
                      setState(() {
                        button_1 = true;
                      })
                    },
                  ),
                ),
                Container(
                    child: RaisedButton(
                      child: new Text('スタンダード'),
                      textColor: Colors.white,
                      color: button_2 ? Colors.blue : Colors.black,
                      onPressed: () => {
                        setState(() {
                          button_2 = true;
                        })
                      },
                    ),
                ),
                Container(
                    child: RaisedButton(
                      child: new Text('ヘヴィ'),
                      textColor: Colors.white,
                      color: button_3 ? Colors.blue : Colors.black,
                      onPressed: () => {
                        setState(() {
                          button_3 = true;
                        }),
                      },
                    ),
                ),
                Container(
                    child: RaisedButton(
                      child: new Text('エキスパート'),
                      textColor: Colors.white,
                      color: button_4 ? Colors.blue : Colors.black,
                      onPressed: () => {
                        setState(() {
                          button_4 = true;
                        }),
                      },
                    ),
                ),
              ],
            ),

            //メインページへ遷移
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
      ),
    );
  }
}

