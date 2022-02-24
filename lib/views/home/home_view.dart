import 'package:counter_app_bloc/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';

part "home_string_values.dart";

class HomeView extends StatelessWidget {
  final _HomeStringValues values = _HomeStringValues();
  int counterValue = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          floatingActionButton: FABButtonsSection(),
          body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                state.counterValue.toString(),
                style:
                    context.textTheme.headline3!.copyWith(color: Colors.black),
              ),
            ]),
          ),
        );
      },
    );
  }
}

class FABButtonsSection extends StatelessWidget {
  const FABButtonsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () => context.read<CounterCubit>().deccrement(),
          child: Icon(Icons.remove),
        ),
        context.emptySizedWidthBoxLow3x,
        FloatingActionButton(
          onPressed: () => context.read<CounterCubit>().increment(),
          child: Icon(Icons.add),
        )
      ],
    );
  }
}
