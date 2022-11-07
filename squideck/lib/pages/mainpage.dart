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
              width: double.infinity,
              height: 300,
              color: Color(0xFF333333),
              margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 100),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                          Colors.white.withOpacity(0.4),
                          BlendMode.dstATop,
                        ),
                        image: const NetworkImage(
                          'assets/sampleimages/squid.png',
                        ),
                        fit: BoxFit.fitWidth
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                        child: Text(
                          '- Software developer from nagoya.',
                          style: TextStyle(
                            color: CustomTheme.instance.letter,
                            fontSize: 24
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                        child: Text(
                          '- My admirer are Aimyon, Munenori kawasaki, Taro Okamoto',
                          style: TextStyle(
                            color: CustomTheme.instance.letter,
                            fontSize: 24
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                    child: Text(
                      'About',
                      style: TextStyle(
                        color: CustomTheme.instance.letter,
                        fontSize: 48
                      ),
                    ),
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
