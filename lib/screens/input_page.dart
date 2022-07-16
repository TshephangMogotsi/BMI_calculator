import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../reusable_widgets/icon_content.dart';
import '../reusable_widgets/reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: const[
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                    cardChild: CardChildContent(
                      icon: FontAwesomeIcons.mars,
                      cardLabel: "MALE",
                    ),
                  ),
                ),
                Expanded(
                   child: ReusableCard(
                    colour: activeCardColor,
                    cardChild: CardChildContent(
                      icon: FontAwesomeIcons.venus,
                      cardLabel: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReusableCard(colour: activeCardColor),
          ),
          Expanded(
            child: Row(
              children: const <Widget>[
                Expanded(
                  child: ReusableCard(colour: activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(colour: activeCardColor),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}



