import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'round_icon_button.dart';

class EdibleButtonContent extends StatelessWidget {
  final String text;
  final int value;
  final Function add;
  final Function remove;

  EdibleButtonContent(
      {@required this.text,
      @required this.value,
      @required this.add,
      @required this.remove});

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      color: kActiveColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            text,
            style: TextStyle(
              fontSize: kTextSize,
            ),
          ),
          Text(
            this.value.toString(),
            style: TextStyle(
              fontSize: kNumberTextSize,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RoundIconButton(
                onPressed: this.remove,
                iconData: Icons.remove,
              ),
              RoundIconButton(onPressed: this.add, iconData: Icons.add),
            ],
          ),
        ],
      ),
    );
  }
}
