import 'package:flutter/material.dart';

class DiceButton extends StatelessWidget {
  final int diceNumber;
  final VoidCallback onPressed;
  const DiceButton({Key? key, required this.diceNumber, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: MaterialButton(
          onPressed: onPressed,
          padding: EdgeInsets.zero,
          child: Image.asset('assets/images/dice$diceNumber.png'),
        ),
      ),
    );
  }
}
