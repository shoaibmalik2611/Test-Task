import 'package:flutter/material.dart';

import 'application/main_config.dart';
import 'application/routes/route_generator.dart';
import 'constants/string_manager.dart';

Future<void> main() async {
  await initMainServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: StringManager.appName,
        scrollBehavior: MyBehavior(),
        debugShowCheckedModeBanner: false,
        initialRoute: RouteManager.rHome,
        onGenerateRoute: RouteGenerator.generateRoute);
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
