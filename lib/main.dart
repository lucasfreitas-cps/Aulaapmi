import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 134, 213, 205),
      appBar: AppBar(
        title: const Text("Aula 3"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text("Sorteio"),
            Text(
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      color: Color.fromARGB(
                        255,
                        Random().nextInt(255),
                        Random().nextInt(255),
                        Random().nextInt(255),
                      ),
                      fontSize: 75,
                      fontWeight: FontWeight.bold,
                    ),
                Random().nextInt(100).toString()),
            const Column(
              children: [
                Text("Lucas Freitas"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("2H3"),
                    Text("2024"),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

void main() => runApp(const Aplicacao());
