import 'package:flutter/material.dart';
import 'constants.dart';

class RoundIconButton extends StatelessWidget {
  final Function onPressed;
  final IconData iconData;
  RoundIconButton({@required this.onPressed, @required this.iconData});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.white,
      shape: CircleBorder(),
      constraints: kRawMaterialButtonConstrains,
      elevation: 6.0,
      onPressed: this.onPressed,
      child: Icon(
        this.iconData,
        color: kActiveColor,
      ),
    );
  }
}
