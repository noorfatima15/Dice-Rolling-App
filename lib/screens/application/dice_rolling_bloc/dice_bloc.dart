import 'package:flutter_bloc/flutter_bloc.dart';

part 'dice_event.dart';
part 'dice_state.dart';

class DiceBloc extends Bloc<DiceEvent, DiceState> {
  DiceBloc() : super(DiceState.initial()) {
    on<OnDiceRoll>((event, emit) => onFirstDiceChanged(event, emit));
  }

  onFirstDiceChanged(OnDiceRoll event, Emitter<DiceState> emit) {
    emit(state.copyWith(firstDiceNumber: event.firstDice, secondDiceNumber: event.secondDice));
  }
}
