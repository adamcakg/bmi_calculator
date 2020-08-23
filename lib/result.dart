import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultPage(
      {@required this.bmiResult,
      @required this.interpretation,
      @required this.resultText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: kPadding, left: kPadding),
                child: Text(
                  'Your Results',
                  style: TextStyle(
                    fontSize: kNumberTextSize,
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  color: kInactiveColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        resultText.toUpperCase(),
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.green,
                        ),
                      ),
                      Text(
                        bmiResult,
                        style: TextStyle(
                          fontSize: 2 * kNumberTextSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        interpretation,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: kTextSize,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              BottomButton(
                text: 'Recalculate',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ]),
      ),
    );
  }
}
