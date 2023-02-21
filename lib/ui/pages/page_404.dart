import 'package:demo/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class Page404 extends StatelessWidget {
  const Page404({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('404',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          const Text('Not found', style: TextStyle(fontSize: 20)),
          CustomFlatButton(
            text: 'Go back',
            onPressed: () => Navigator.pop(context),
          )
        ],
      ),
    ));
  }
}
