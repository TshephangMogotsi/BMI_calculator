import 'package:flutter/material.dart';

class RoundIconButton extends StatefulWidget {
  const RoundIconButton({Key? key, required this.icon, required this.onClick})
      : super(key: key);

  final IconData icon;
  final VoidCallback onClick;

  @override
  State<RoundIconButton> createState() => _RoundIconButtonState();
}

class _RoundIconButtonState extends State<RoundIconButton> {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: widget.onClick,
      elevation: 6.0,
      shape: const CircleBorder(),
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: const Color(0xFF4C4F5E),
      child: Icon(widget.icon),
    );
  }
}