import 'package:flutter/material.dart';

import 'counter_model.dart';

void main() {
  runApp(CounterApp(model: CounterModel()));
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key, required this.model});

  final CounterModel model;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Counter',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Counter')),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedBuilder(
                animation: model,
                builder: (context, child) => Text(
                  '${model.count}',
                  key: const ValueKey('countLabel'),
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: model.increment,
                child: const Text('Increment'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
