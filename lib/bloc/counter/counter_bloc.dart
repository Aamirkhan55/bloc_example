import 'package:bloc_example/bloc/counter/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<IncrementCounterEvents>((event, emit) {
       emit(state + 1);
    });
    on<DecrementCounterEvents>((event, emit) {
      emit(state - 1);
    });
  }
}