import 'package:flutter/material.dart';
import 'constants.dart';

class ReusableCard extends StatelessWidget {
  final Widget child;
  final Color color;
  final Function onTap;
  ReusableCard({this.child, this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        margin: EdgeInsets.all(kMargin),
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(kBorderRadius),
        ),
        child: this.child,
      ),
    );
  }
}
