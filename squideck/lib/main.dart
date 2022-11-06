import 'package:flutter/material.dart';
import 'package:squideck/constants/custom_theme.dart';
import 'package:squideck/constants/page_path.dart';
import 'package:squideck/constants/route.dart';

void main() {
  runApp(
    const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'SquidecK',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key, });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {

    return CommonFrame(
      contents: Welcome(),
    );
  }
}
