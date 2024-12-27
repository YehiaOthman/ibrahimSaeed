import 'package:flutter/material.dart';
import 'package:intervyou_app/core/routes_manger.dart';

import '../presentation/screens/home/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        RoutesManager.home: (context) => const Home(),
      },
      initialRoute: RoutesManager.home,
    );
  }
}
