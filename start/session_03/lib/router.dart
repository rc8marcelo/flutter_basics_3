import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/incident_screen.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
      case '/incident':
        return MaterialPageRoute(
          builder: (_) => IncidentScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(
              title: const Text('Screen Not Found'),
            ),
          ),
        );
    }
  }
}
