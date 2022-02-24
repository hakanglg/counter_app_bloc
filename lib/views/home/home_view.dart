import 'package:counter_app_bloc/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';

import '../../core/components/fab/custom_fab.dart';

part "home_string_values.dart";

// ignore: must_be_immutable
class HomeView extends StatelessWidget {
  final _HomeStringValues values = _HomeStringValues();

  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          floatingActionButton: FABsSection(context),
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

  // ignore: non_constant_identifier_names
  Widget FABsSection(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomFAB(
            icon: Icons.remove,
            function: () => context.read<CounterCubit>().decrement(),
          ),
          context.emptySizedWidthBoxLow3x,
          CustomFAB(
            icon: Icons.add,
            function: () => context.read<CounterCubit>().increment(),
          ),
        ],
      );
}
