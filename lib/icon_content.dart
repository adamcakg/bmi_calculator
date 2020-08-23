import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  final IconData iconData;
  final String text;

  IconContent({this.iconData, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          this.iconData,
          size: kIconSize,
        ),
        SizedBox(
          height: kGapSize,
        ),
        Text(
          this.text,
          style: TextStyle(
            fontSize: kTextSize,
          ),
        ),
      ],
    );
  }
}
