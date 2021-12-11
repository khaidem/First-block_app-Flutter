import 'package:bloc_app/home/logic/cake/cake_cubit.dart';
import 'package:bloc_app/home/logic/counter/cubit/counter_cubit.dart';
import 'package:bloc_app/router/auto_route.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.appRouter}) : super(key: key);

  final AppRouter appRouter;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider(create: (context) => CounterCubit()),

        BlocProvider(create: (context) => CakeCubit()),
        BlocProvider(create: (context) => CounterCubit()),
      ],
      child: MaterialApp.router(
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}
