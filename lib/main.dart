import 'package:demo/services/navigator_service.dart';
import 'package:flutter/material.dart';

import 'package:demo/ui/layout/main_layout_page.dart';
import 'package:demo/router/router_generator.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas app',
      initialRoute: '/stateful',
      onGenerateRoute: RouteGenerator.generateRoute,
      navigatorKey: navigationService.navigatorKey,
      builder: (_, child) {
        return MainLayoutPage(child: child ?? Container());
      },
    );
  }
}
