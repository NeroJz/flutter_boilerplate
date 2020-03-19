import 'package:fl_boilerplate/utilities/constants.dart';
import 'package:flutter/material.dart';

class CGVAppBar extends StatefulWidget implements PreferredSizeWidget {
  CGVAppBar({Key key})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  _CGVAppBarState createState() => _CGVAppBarState();
}

class _CGVAppBarState extends State<CGVAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
