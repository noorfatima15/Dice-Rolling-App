part of 'dice_bloc.dart';

abstract class DiceEvent {}

class OnDiceRoll extends DiceEvent {
  final int firstDice;
  final int secondDice;
  OnDiceRoll({required this.firstDice, required this.secondDice});
}
