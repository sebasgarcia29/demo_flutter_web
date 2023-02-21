import 'package:demo/services/navigator_service.dart';
import 'package:flutter/material.dart';

import 'package:demo/ui/shared/custom_flat_button.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(children: [
        CustomFlatButton(
          color: Colors.black,
          text: 'Contador Statefull',
          // onPressed: () => Navigator.pushNamed(context, '/stateful'),
          onPressed: () => navigationService.navigateTo('/stateful'),
        ),
        const SizedBox(width: 10),
        CustomFlatButton(
          color: Colors.black,
          text: 'Contador Provider',
          // onPressed: () => Navigator.pushNamed(context, '/provider'),
          onPressed: () => navigationService.navigateTo('/provider'),
        ),
        CustomFlatButton(
          color: Colors.black,
          text: 'Other Page',
          // onPressed: () => Navigator.pushNamed(context, '/abc123'),
          onPressed: () => navigationService.navigateTo('/404'),
        ),
      ]),
    );
  }
}
