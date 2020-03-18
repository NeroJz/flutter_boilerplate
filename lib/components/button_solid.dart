
import 'package:fl_boilerplate/utilities/constants.dart';
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
      fillColor: kPrimaryColor,
      splashColor: kLightGreyColor,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: kWhiteColor,
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