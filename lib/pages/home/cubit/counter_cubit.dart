

import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState());

  void increment() {
    emit(state.copyWith(value: state.value + 1));
  }

  void decrement() {
    emit(state.copyWith(value: state.value - 1));
  }

  void reset() {
    emit(const CounterState());
  }
}
