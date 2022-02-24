import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  void increment() => emit(CounterState(counterValue: state.counterValue + 1));
  void deccrement() => emit(CounterState(counterValue: state.counterValue - 1));
}
