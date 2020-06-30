
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Components/reusable_widget.dart';
import '../Components/icon_data.dart';
import '../Components/constants.dart';
import '../Components/buttom_button.dart';

enum Gender {
  male,
  female,
}
int sliderValue = 180;
int weight = 60;
int age = 16;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender genderColour;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 5,
            child: Container(
              color: Colors.black38,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableWidget(
                    onPress: () {
                      setState(() {
                        genderColour =
                            (genderColour == Gender.male) ? null : Gender.male;
                      });
                    },
                    colour: genderColour == Gender.male
                        ? kInActiveColor
                        : kActiveColor,
                    newWid: InnIcon(
                      nameIcon: FontAwesomeIcons.mars,
                      innText: 'MALE',
                      innColor: genderColour == Gender.male
                          ? Colors.white
                          : kTextColor,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableWidget(
                    onPress: () {
                      setState(() {
                        genderColour = (genderColour == Gender.female)
                            ? null
                            : Gender.female;
                      });
                    },
                    colour: genderColour == Gender.female
                        ? kInActiveColor
                        : kActiveColor,
                    newWid: InnIcon(
                      nameIcon: FontAwesomeIcons.venus,
                      innText: 'FEMALE',
                      innColor: genderColour == Gender.female
                          ? Colors.white
                          : kTextColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableWidget(
              colour: kActiveColor,
              newWid: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: TextStyle(
                        color: kTextColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: <Widget>[
                      Text(sliderValue.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 50)),
                      Text('cm',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 20)),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        thumbColor: kBottomTabColor,
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 10,
                          disabledThumbRadius: 10,
                        ),
                        activeTrackColor: kBottomTabColor),
                    child: Slider(
                      value: sliderValue.toDouble(),
                      min: 120.0,
                      max: 200.0,
                      divisions: 300,
                      onChanged: (double newValue) {
                        setState(() {
                          sliderValue = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableWidget(
                    colour: kActiveColor,
                    newWid: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: kTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 45),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundedButton(
                              roundedButtonIcon: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  weight += 1;
                                });
                              },
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            RoundedButton(
                              roundedButtonIcon: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  weight -= 1;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableWidget(
                    colour: kActiveColor,
                    newWid: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('AGE', style: kTextStyle),
                        Text(
                          age.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 45),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundedButton(
                              roundedButtonIcon: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  age += 1;
                                });
                              },
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            RoundedButton(
                              roundedButtonIcon: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  age -= 1;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            labelText: 'CALCULATE BMI',
          ),
        ],
      ),
    );
  }
}

