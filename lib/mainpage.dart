import 'package:flutter/material.dart';

const kMainColour = Colors.blue;
const kIconColour = Colors.black;

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SeaThrough'),
        centerTitle: true,
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
                  color: Colors.blue,
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
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[
          //1つ目の行
          Expanded(
            child: Row(

              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(

                      //背景の色に合わせる
                      child: Image.asset(
                        'images/penguins.jpeg',
                      ),
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),


                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //大学名
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          child: Center(
                            child: Text('早稲田大学',
                            style: TextStyle(
                              color: Colors.white,

                            ),),
                          ),
                          // width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      //ランキング
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          child: Image.asset(
                            'images/level.png',
                            // fit: BoxFit.contain,
                          ),
                          // width: 150,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),

                ),
              ],
            ),
          ),
          //2つ目の行
          Expanded(

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Image.asset(
                  'images/weekly_todo.jpeg',
                  // fit: BoxFit.contain,
                ),
                width: 100,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

          ),
          //3つ目の行
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 100,
                // height: 20,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

          ),


          //4つめの行
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      child: Icon(
                        Icons.settings_outlined,
                        color: kIconColour,
                        size: 24,
                      ),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: kMainColour,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: kMainColour,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      child: Icon(
                        Icons.access_time,
                        color: kIconColour,
                        size: 24,
                      ),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: kMainColour,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                ),
              ],
            ),
          ),
        ],
      ),



    );
  }
}
