import 'package:flutter/material.dart';
import 'package:squideck/constants/custom_theme.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: CustomTheme.instance.containerBgColor,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 1200,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.black,
              ),
              margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 100),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Text(
                        'When my muscles say "No", I say "Yes".',
                        style: TextStyle(
                          color: CustomTheme.instance.letter
                        ),
                      )
                    ],
                  ),
                ],
              ),

            ),
          ]
        ),
      ),
    );
  }
}
