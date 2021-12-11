import 'package:bloc_app/home/logic/cake/cake.dart';
import 'package:bloc_app/home/logic/counter/cubit/counter_cubit.dart';
import 'package:bloc_app/router/auto_route.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          const CounterText(),
          const Text('Cake Number'),
          const CakeText(),
          ElevatedButton(
            onPressed: () {
              context.router.push(const HomeDetails());
            },
            child: const Text('Go to Details'),
          ),
          ElevatedButton(
            onPressed: () {
              final counterCubit = context.read<CounterCubit>();
              counterCubit.increment();
            },
            child: const Text('increment'),
          ),
          ElevatedButton(
            onPressed: () {
              final counterCubit = context.read<CounterCubit>();
              counterCubit.decrment();
            },
            child: const Text('decrement'),
          ),
          ElevatedButton(
            onPressed: () {
              final cakeCubit = context.read<CakeCubit>();
              cakeCubit.decrement();
            },
            child: const Text('Cake decrement'),
          ),
        ],
      ),
    );
  }
}

class CounterText extends StatelessWidget {
  const CounterText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final counterCubit = BlocProvider.of<CounterCubit>(context);
    final counterCubit = context.watch<CounterCubit>();
    final counterState = counterCubit.state;
    final count = counterState.count;

    return Text(count.toString());
  }
}

class CakeText extends StatelessWidget {
  const CakeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cakeCubit = context.watch<CakeCubit>();
    final cakeState = cakeCubit.state;
    final cake = cakeState.cake;

    return Text(cake.toString());
  }
}
