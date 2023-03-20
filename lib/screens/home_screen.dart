import 'dart:math';

import 'package:dice_roller_app/constants/typography.dart';
import 'package:dice_roller_app/core/widgets/dice_button.dart';
import 'package:dice_roller_app/screens/application/dice_rolling_bloc/dice_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DiceBloc(),
      child: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: BlocBuilder<DiceBloc, DiceState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        DiceButton(
                          diceNumber: state.firstDiceNumber,
                          onPressed: () {
                            context.read<DiceBloc>().add(OnDiceRoll(firstDice: Random().nextInt(6) + 1, secondDice: Random().nextInt(6) + 1));
                          },
                        ),
                        DiceButton(
                          diceNumber: state.secondDiceNumber,
                          onPressed: () {
                            context.read<DiceBloc>().add(OnDiceRoll(secondDice: Random().nextInt(6) + 1, firstDice: Random().nextInt(6) + 1));
                            context.read<DiceBloc>().add(OnDiceRoll(secondDice: Random().nextInt(6) + 1, firstDice: Random().nextInt(6) + 1));
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('First Dice = ${state.firstDiceNumber}', style: subHeader),
                          Text('Second Dice = ${state.secondDiceNumber}', style: subHeader),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Total : ${state.firstDiceNumber + state.secondDiceNumber}',
                      style: mainHeader,
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
