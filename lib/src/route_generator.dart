import 'dart:js';

import 'package:flutter/material.dart';
import 'package:navigation/src/pages/home/login_page.dart';
import 'package:navigation/src/pages/user/detail_page.dart';
import 'package:navigation/src/pages/user/error_page.dart';
import 'package:navigation/src/pages/user/home_page.dart';

class RouteGenerator {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    Uri uri = Uri.parse(settings.name ?? "");

    if (uri.pathSegments.length > 2) {
      int id = int.tryParse(uri.pathSegments.last) ?? -1;
      if (id < 0) {
        return MaterialPageRoute(
          builder: (context) => const ErrorPage(),
        );
      }
      return MaterialPageRoute(
        builder: (context) => DetailPage(id: id),
      );
    }

    if (settings.name?.startsWith('/second') ?? false) {
      return RouteGenerator.onGenerateRouteSecond(settings);
    }

    switch (settings.name) {
      case '/login':
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => ErrorPage(),
        );
    }
  }

  static Route<dynamic>? onGenerateRouteSecond(RouteSettings settings) {
    switch (settings.name) {
      case '/second':
        return MaterialPageRoute(
          builder: (context) => const UserPage(),
        );
      case '/second/third':
        return MaterialPageRoute(
          builder: (context) => const DetailPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => ErrorPage(),
        );
    }
  }
}
