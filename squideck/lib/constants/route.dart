import 'package:squideck/constants/page_path.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static const String home = '/';
  static const String blog = '/blog';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (_) => Home()
        );
      case blog:
        return MaterialPageRoute(
          builder: (_) => Blog()
        );
      default:
        throw Exception('Route not found');
    }
  }
}
