import 'package:flutter/material.dart';
import 'package:navigation/src/pages/user/detail_page.dart';
import 'package:navigation/src/pages/user/error_page.dart';
import 'package:navigation/src/pages/home/login_page.dart';
import 'package:navigation/src/pages/user/home_page.dart';
import 'package:navigation/src/route_generator.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      onGenerateRoute: RouteGenerator.onGenerateRoute,
    );
  }
}
