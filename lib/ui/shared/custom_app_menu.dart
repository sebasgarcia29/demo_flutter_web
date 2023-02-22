import 'package:flutter/material.dart';

import 'package:demo/locator.dart';
import 'package:demo/services/navigator_service.dart';
import 'package:demo/ui/shared/custom_flat_button.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (_, constraints) =>
            (constraints.maxWidth > 520) ? _TabletDeskMenu() : _MobileMenu());
  }
}

class _TabletDeskMenu extends StatelessWidget {
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
          // onPressed: () => Navigator.pushNamed(context, '/stateful'),
          onPressed: () => locator<NavigationService>().navigateTo('/stateful'),
        ),
        const SizedBox(width: 10),
        CustomFlatButton(
          color: Colors.black,
          text: 'Contador Provider',
          // onPressed: () => Navigator.pushNamed(context, '/provider'),
          // onPressed: () => navigationService.navigateTo('/provider'),
          onPressed: () => locator<NavigationService>().navigateTo('/provider'),
        ),
        CustomFlatButton(
          color: Colors.black,
          text: 'Other Page',
          // onPressed: () => Navigator.pushNamed(context, '/abc123'),
          // onPressed: () => navigationService.navigateTo('/404'),
          onPressed: () => locator<NavigationService>().navigateTo('/404'),
        ),
      ]),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButton(
            color: Colors.black,
            text: 'Contador Statefull',
            // onPressed: () => Navigator.pushNamed(context, '/stateful'),
            // onPressed: () => Navigator.pushNamed(context, '/stateful'),
            onPressed: () =>
                locator<NavigationService>().navigateTo('/stateful'),
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            color: Colors.black,
            text: 'Contador Provider',
            // onPressed: () => Navigator.pushNamed(context, '/provider'),
            // onPressed: () => navigationService.navigateTo('/provider'),
            onPressed: () =>
                locator<NavigationService>().navigateTo('/provider'),
          ),
          CustomFlatButton(
            color: Colors.black,
            text: 'Other Page',
            // onPressed: () => Navigator.pushNamed(context, '/abc123'),
            // onPressed: () => navigationService.navigateTo('/404'),
            onPressed: () => locator<NavigationService>().navigateTo('/404'),
          ),
        ],
      ),
    );
  }
}
