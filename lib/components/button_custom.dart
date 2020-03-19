
import 'package:fl_boilerplate/utilities/constants.dart';
import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  const ButtonCustom({
    Key key,
    @required this.onPressed,
    @required this.text,
    this.fillColor = kPrimaryColor,
    this.borderColor = kWhiteColor,
  }) : super(key: key);

  final Function onPressed;
  final String text;
  final Color fillColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: fillColor,
      splashColor: kLightGreyColor,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
            width: kBorderWidth,
          ),
        ),
        width: kBtnWidth,
        height: kBtnHeight,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: kWhiteColor,
              fontSize: kBtnFontsize,
            ),
          ),
        ),
      ),
    );
  }
}