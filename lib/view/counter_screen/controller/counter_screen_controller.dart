import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/view/counter_screen/state/counter_screen_state.dart';

final counterScreenStateNotifierProvider = StateNotifierProvider<CounterScreenStateNotifier, CounterScreenState>(
  (ref) => CounterScreenStateNotifier(),
);

class CounterScreenStateNotifier extends StateNotifier<CounterScreenState> {
  CounterScreenStateNotifier() : super(CounterScreenState(counter: 10, isLoading: true));

  onIncrement(){
  state = state.copyWith(counter: ++state.counter);
}
}

