import 'package:bmi_calc/icon_content.dart';
import 'package:bmi_calc/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    cardChild: const IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    cardChild: const IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              onPress: () {},
              colour: kInactiveCardColour,
              cardChild: const Column(
                children: [
                  Center(
                    child: Text(
                      "HEIGHT",
                      style: kLabelTextStyle,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "180",
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {},
                    colour: kInactiveCardColour,
                    cardChild: const Column(),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {},
                    colour: kInactiveCardColour,
                    cardChild: const Column(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomContainercolour,
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            height: kBottomContainerHeight,
          )
        ],
      ),
    );
  }
}
