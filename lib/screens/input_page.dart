import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

class CardChildContent extends StatelessWidget {
  const CardChildContent({
    Key? key,required this.icon,required this.cardLabel
  }) : super(key: key);
  final IconData icon;
  final String cardLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(height: 15.0),
        Text(cardLabel,style: const TextStyle(
          fontSize: 18.0,
          color:  Color(0xFF8D8E98)
        ),)
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({Key? key, required this.colour, this.cardChild})
      : super(key: key);
  final Color colour;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardChild,
    );
  }
}
