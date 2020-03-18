import 'package:fl_boilerplate/components/button_solid.dart';
import 'package:fl_boilerplate/components/button_stroke.dart';
import 'package:fl_boilerplate/utilities/constants.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBodyColor,
        textTheme: TextTheme(
          body1: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: kGreenColor,
          ),
        ),
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Row(
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.timer,
                  size: 20.0,
                  color: kBlackColor,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.audiotrack,
                  size: 20.0,
                  color: kBlackColor,
                ),
              ),
            ],
          ),
        ],
        backgroundColor: kBodyColor,
        centerTitle: false,
        titleSpacing: 0.0,
        title: Row(
          children: <Widget>[
            Image.asset(
              'assets/img/logo.png',
              fit: BoxFit.contain,
              height: 32.0,
            ),
          ],
        ),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            size: 20.0,
            color: kBlackColor,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            ButtonSolid(
              onPressed: () {
                print("hello world");
              },
              text: 'Button Text',
            ),

            ButtonStroke(
              onPressed: () {
                print("hello world");
              },
              text: 'Button Text',
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


