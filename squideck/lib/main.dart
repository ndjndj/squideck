import 'package:flutter/material.dart';
import 'package:squideck/constants/custom_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'SquidecK',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key, });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> _appbarItem = ['Blog', 'Products', 'About'];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SquidecK',
          style: TextStyle(color: CustomTheme.instance.letter)
        ),
        backgroundColor: CustomTheme.instance.appBar,
        leading: IconButton(
          icon: const CircleAvatar(
            backgroundImage: NetworkImage('assets/squid.png'),
            backgroundColor: Colors.white,
          ),
          onPressed: (){return;},
        ),
        actions: List.generate(_appbarItem.length,
          (index) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  _appbarItem[index],
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              )
            );
          }
        )
      ),
      body: Container(
        color: CustomTheme.instance.containerBgColor,
        child: SingleChildScrollView(
          child: Container(
            color: CustomTheme.instance.containerBgColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.black,
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Text(
                        'When my muscles say "No", I say "Yes".',
                        style: TextStyle(
                          color: CustomTheme.instance.letter
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.black,
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Text(
                        'When my muscles say "No", I say "Yes".',
                        style: TextStyle(
                          color: CustomTheme.instance.letter
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.black,
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Text(
                        'When my muscles say "No", I say "Yes".',
                        style: TextStyle(
                          color: CustomTheme.instance.letter
                        ),
                      )
                    ],
                  ),
                )
              ]
            ),
          ),
        )
      ),

    );
  }
}
