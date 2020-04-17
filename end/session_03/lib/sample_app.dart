import 'package:flutter/material.dart';

import 'router.dart';

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: Router.generateRoute,
      title: "",
      theme: ThemeData(
        primaryColor: Colors.lightBlue[900],
        accentColor: Colors.yellow,
      ),
    );
  }
}
