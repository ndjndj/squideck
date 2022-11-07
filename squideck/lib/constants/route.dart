import 'package:squideck/constants/page_path.dart';
import 'package:flutter/material.dart';
import 'package:squideck/pages/about.dart';
import 'package:squideck/pages/products.dart';

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
      case products:
        return MaterialPageRoute(
          builder: (_) => CommonFrame(
            contents: Products()
          )
        );
      case about:
        return MaterialPageRoute(
          builder: (_) => CommonFrame(
            contents: About()
          )
        );
      default:
        throw Exception('Route not found');
    }
  }
}
