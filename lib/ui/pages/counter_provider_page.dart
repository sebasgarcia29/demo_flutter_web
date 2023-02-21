import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:demo/providers/counter_provider.dart';
import 'package:demo/ui/shared/custom_app_menu.dart';
import 'package:demo/ui/shared/custom_flat_button.dart';

class CounterProviderPage extends StatelessWidget {
  const CounterProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: _CounterProviderPageBody(),
    );
  }
}

class _CounterProviderPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomAppMenu(),
          const Spacer(),
          const Text('Provider Counter', style: TextStyle(fontSize: 20)),
          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Counter: ${counterProvider.counter}',
                style: const TextStyle(fontSize: 80),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFlatButton(
                onPressed: () => counterProvider.decrement(),
                text: 'Decrementar',
              ),
              CustomFlatButton(
                color: Colors.green,
                onPressed: () => counterProvider.increment(),
                text: 'Incrementar',
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
