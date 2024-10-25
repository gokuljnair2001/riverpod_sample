import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/view/counter_screen/controller/counter_screen_controller.dart';
import 'package:riverpod_sample/view/counter_screen/state/counter_screen_state.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterScreenStateObj =
        ref.watch(counterScreenStateNotifierProvider) as CounterScreenState;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterScreenStateNotifierProvider.notifier).onIncrement();
        },
      ),
      body: Center(
        child: Text(counterScreenStateObj.counter.toString()),
      ),
    );
  }
}
