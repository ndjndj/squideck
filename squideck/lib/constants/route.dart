import 'package:squideck/constants/page_path.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static const String home = '/';
  static const String blog = '/blog';
  static const String products = '/products';
  static const String about = '/about';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (_) => CommonFrame(
            contents: Welcome(),
          )
        );
      case blog:
        return MaterialPageRoute(
          builder: (_) => CommonFrame(
            contents: Blog()
          )
        );
      default:
        throw Exception('Route not found');
    }
  }
}
