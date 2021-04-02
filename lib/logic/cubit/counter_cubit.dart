import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> with HydratedMixin {
  CounterCubit() : super(CounterState(counterValue: 0));

  void increment() {
    emit(CounterState(counterValue: state.counterValue + 1));
  }

  void decrement() {
    emit(CounterState(counterValue: state.counterValue - 1));
  }

  @override
  CounterState fromJson(Map<String, dynamic> json) {
    return json != null
        ? CounterState.fromMap(json)
        : CounterState(counterValue: 0);
  }

  @override
  Map<String, dynamic> toJson(CounterState state) {
    return state.toMap();
  }
}
