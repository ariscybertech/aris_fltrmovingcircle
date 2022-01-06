import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Floating Circle',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int left = 50;
  int top = 50;
  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: <Widget>[

          Expanded(
            flex: 5,
            child: Stack(
              children: <Widget>[
                Container(
                color: Colors.grey,
                ),
                Positioned(
                  top: double.parse(top.toString()),
                  left: double.parse(left.toString()),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue
                    ),
                  ),
                ),
              ]
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    child: Container(
                      child: Icon(Icons.arrow_upward),
                    ),
                    onTap: (){
                      setState(() {
                        top = top-10;
                      });
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        child: Container(
                          child: Icon(Icons.arrow_back),
                        ),
                        onTap: (){
                          setState(() {
                            left = left-10;
                            print(top);
                          });
                        },
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      GestureDetector(
                        child: Container(
                          child: Icon(Icons.arrow_forward),
                        ),
                        onTap: (){
                          setState(() {
                            left = left+10;
                          });
                        },
                      ),
                    ],
                  ),

                  GestureDetector(
                    child: Container(
                      child: Icon(Icons.arrow_downward),
                    ),
                    onTap: (){
                      setState(() {
                        top = top+10;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
