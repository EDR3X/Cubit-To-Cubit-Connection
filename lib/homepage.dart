import 'package:cubit_to_cubit_communication/cubits/color/color_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.watch<ColorCubit>().state.color,
      appBar: AppBar(
        title: const Text("Cubit connection"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Change Color",
                style: TextStyle(fontSize: 24),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "0",
              style: TextStyle(
                  fontSize: 52,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Increase Counter",
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
