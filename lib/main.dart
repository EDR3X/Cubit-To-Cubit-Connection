import 'package:cubit_to_cubit_communication/cubits/color/color_cubit.dart';
import 'package:cubit_to_cubit_communication/cubits/counter/counter_cubit.dart';
import 'package:cubit_to_cubit_communication/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ColorCubit>(
          create: (context) => ColorCubit(),
        ),
        BlocProvider<CounterCubit>(
          create: ((context) => CounterCubit(
                colorCubit: context.read<ColorCubit>(),
              )),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Cubit to Cubit Communication",
        theme: ThemeData(primarySwatch: Colors.green),
        home: HomePage(),
      ),
    );
  }
}
