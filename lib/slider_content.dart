import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';

class SliderContent extends StatelessWidget {
  final double height;
  final Function onChange;

  SliderContent({this.height, this.onChange});

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      color: kActiveColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'HEIGHT',
            style: TextStyle(
              fontSize: kTextSize,
            ),
          ),
          SizedBox(
            height: kGapSize,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
              Text(
                this.height.toString(),
                style: TextStyle(
                  fontSize: kNumberTextSize,
                ),
              ),
              Text(
                'cm',
                style: TextStyle(
                  fontSize: kTextSize,
                ),
              ),
            ],
          ),
          Slider(
            activeColor: kSliderActiveColor,
            inactiveColor: kSliderInActiveColor,
            min: kSliderMinimum,
            max: kSliderMaximum,
            value: this.height,
            onChanged: this.onChange,
          ),
        ],
      ),
    );
  }
}
