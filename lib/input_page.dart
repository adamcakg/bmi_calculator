import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'genderEnum.dart';
import 'slider_content.dart';
import 'constants.dart';
import 'edible_button_content.dart';
import 'bottom_button.dart';
import 'result.dart';
import 'calculator_brain.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.none;
  double height = 170;
  double weight = 70;
  int age = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      color: selectedGender == Gender.male
                          ? kActiveColor
                          : kInactiveColor,
                      child: IconContent(
                        iconData: FontAwesomeIcons.mars,
                        text: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      color: selectedGender == Gender.female
                          ? kActiveColor
                          : kInactiveColor,
                      child: IconContent(
                        iconData: FontAwesomeIcons.venus,
                        text: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SliderContent(
                height: this.height,
                onChange: (double newValue) {
                  setState(() {
                    this.height = newValue.roundToDouble();
                  });
                },
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: EdibleButtonContent(
                    text: 'WEIGHT',
                    value: this.weight.toInt(),
                    add: () {
                      setState(() {
                        this.weight += 1;
                      });
                    },
                    remove: () {
                      setState(() {
                        this.weight -= 1;
                      });
                    },
                  )),
                  Expanded(
                      child: EdibleButtonContent(
                    text: 'AGE',
                    value: this.age,
                    add: () {
                      setState(() {
                        this.age += 1;
                      });
                    },
                    remove: () {
                      setState(() {
                        this.age -= 1;
                      });
                    },
                  )),
                ],
              ),
            ),
            BottomButton(
              text: 'Calculate',
              onTap: () {
                CalculatorBrain calculatorBrain =
                    CalculatorBrain(height: this.height, weight: this.weight);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                            bmiResult: calculatorBrain.calculateBmi(),
                            interpretation: calculatorBrain.getInterpretation(),
                            resultText: calculatorBrain.getResult())));
              },
            ),
          ],
        ),
      ),
    );
  }
}
