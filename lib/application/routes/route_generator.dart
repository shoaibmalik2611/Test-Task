import 'package:flutter/material.dart';
import 'package:kostenlos/presentation/views/home/home_view.dart';

class RouteManager {
  static const rHome = '/';
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case RouteManager.rHome:
        return MaterialPageRoute(builder: (_) => const HomeView());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
            title: const Text(
          'Error',
        )),
        body: Center(
          child: Container(
            color: Colors.white,
            child: const Text('Page Not Found'),
          ),
        ),
      );
    });
  }
}
