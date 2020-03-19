import 'package:fl_boilerplate/app/app.dart';
import 'package:fl_boilerplate/app/app_state.dart';
import 'package:fl_boilerplate/components/button_stroke.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              AppState.of(context).value.language('Homepage_message_popup'),
            ),
            Container(
              height: 15.0,
            ),
            ButtonStroke(
              onPressed: () {
                appController.setLang(lang: 'en');
              },
              text: "EN",
            ),
            Container(
              height: 5,
            ),
            ButtonStroke(
              onPressed: () {
                appController.setLang(lang: 'zh');
              },
              text: "ZH",
            ),
          ],
        ),
      ),
    );
  }
}
