import 'package:fl_boilerplate/components/cgv_appbar.dart';
import 'package:fl_boilerplate/utilities/constants.dart';
import 'package:flutter/material.dart';


class FreeMemberRegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBodyColor,
      appBar: CGVAppBar(),
      body: Container(
        child: Center(
          child: Text(
              'Free member registration'
          ),
        ),
      ),
    );
  }
}
