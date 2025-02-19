import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prueba/pages/home/cubit/counter_cubit.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        spacing: 10,
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: 'a',
            onPressed: context.read<CounterCubit>().increment,
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: 'b',
            onPressed: context.read<CounterCubit>().decrement,
            child: const Icon(Icons.remove),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Home page',
              style: TextStyle(color: Colors.white),
            ),
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return Text(
                  state.value.toString(),
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
