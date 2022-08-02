import 'package:flutter/material.dart';
import 'package:navigation/src/pages/user/detail_page.dart';
import 'package:navigation/src/pages/user/error_page.dart';
import 'package:navigation/src/pages/home/login_page.dart';
import 'package:navigation/src/pages/user/home_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/login', routes: {
      '/login': (context) => const LoginPage(),
      '/userPage': (context) => const UserPage(),
      // '/detailPage': (context) => const DetailPage(),
      '/error': (context) => const ErrorPage(),
    });
  }
}
