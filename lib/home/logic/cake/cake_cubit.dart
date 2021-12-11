import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'cake_state.dart';

class CakeCubit extends Cubit<CakeState> {
  CakeCubit() : super(const CakeState(cake: 100));

  void decrement() {
    final newCake = state.cake - 1;
    final newstate = CakeState(cake: newCake);
    emit(newstate);
  }
}
