import 'package:flutter/material.dart';

import 'app_layout.dart';

import 'app.dart';

void main() {
//  runApp(const MyApp());
  runApp(DashboardApp.mock());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const Material(child: AppLayout()),
        '/welcome': (context) => const Material(child: AppLayout()),
      },
      title: 'WEB MAIN LAYOUT',
      /*
      home: Material(
        child: AppLayout(),
      ),
      */
    );
  }
}
