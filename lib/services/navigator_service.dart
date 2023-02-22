import 'package:flutter/material.dart';

// class _NavigationService {
class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future navigateTo(String routerName) {
    return navigatorKey.currentState!.pushNamed(routerName);
  }

  void goBack() {
    return navigatorKey.currentState!.pop();
  }
}

// final navigationService = _NavigationService();
