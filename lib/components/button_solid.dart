
import 'package:fl_boilerplate/constants/Constants.dart';
import 'package:flutter/material.dart';

class ButtonSolid extends StatelessWidget {
  const ButtonSolid({
    Key key,
    @required this.onPressed,
    @required this.text,
  }) : super(key: key);

  final Function onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: Constants.primary,
      splashColor: Constants.light_grey,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Constants.white,
            width: Constants.border_width,
          ),
        ),
        width: Constants.btn_width,
        height: Constants.btn_height,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Constants.white,
              fontSize: Constants.btn_font_size,
            ),
          ),
        ),
      ),
    );
  }
}