import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';


class CardChildContent extends StatelessWidget {
  const CardChildContent(
      {Key? key, required this.icon, required this.cardLabel})
      : super(key: key);
  final IconData icon;
  final String cardLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(height: 15.0),
        Text(
          cardLabel,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
