import 'package:flutter/cupertino.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

import 'package:demo/ui/views/views.dart';
// import 'package:demo/ui/pages/pages.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/stateful':
        // return MaterialPageRoute(
        //   settings: const RouteSettings(name: '/stateful'),
        //   builder: (_) => const CounterPage(),
        // );
        return _fadeRoute(const CounterView(), '/stateful');
      case '/provider':
        // return MaterialPageRoute(
        //   settings: const RouteSettings(name: '/provider'),
        //   builder: (_) => const CounterProviderPage(),
        // );
        return _fadeRoute(const CounterProviderView(), '/provider');

      default:
        // return MaterialPageRoute(
        //   settings: const RouteSettings(name: '/404'),
        //   builder: (_) => const Page404(),
        // );
        return _fadeRoute(const View404(), '/404');
    }
  }

  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
      settings: RouteSettings(name: routeName),
      pageBuilder: (_, __, ___) => child,
      transitionDuration: const Duration(milliseconds: 150),
      transitionsBuilder: (_, animation, __, ___) => (kIsWeb)
          ? FadeTransition(
              opacity: animation,
              child: child,
            )
          : CupertinoPageTransition(
              primaryRouteAnimation: animation,
              secondaryRouteAnimation: __,
              linearTransition: true,
              child: child,
            ),
    );
  }
}
