import 'package:flutter/material.dart';
import 'constants.dart';


class BottomButton extends StatelessWidget {
  final String text;
  final Function onTap;

  BottomButton({this.text, this.onTap});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            this.text,
            style: TextStyle(
              fontSize: kTextSize,
            ),
          ),
        ),
      ),
      onTap: this.onTap,
    );
  }
}
