part of 'dice_bloc.dart';

class DiceState {
  final int firstDiceNumber;
  final int secondDiceNumber;
  DiceState({required this.firstDiceNumber, required this.secondDiceNumber});
  factory DiceState.initial() => DiceState(firstDiceNumber: 1, secondDiceNumber: 2);
  DiceState copyWith({int? firstDiceNumber, int? secondDiceNumber}) {
    return DiceState(
      firstDiceNumber: firstDiceNumber ?? this.firstDiceNumber,
      secondDiceNumber: secondDiceNumber ?? this.secondDiceNumber,
    );
  }
}
