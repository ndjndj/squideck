import 'package:flutter/material.dart';

import 'package:squideck/constants/custom_theme.dart';


class LargeProductLink extends StatelessWidget {
  const LargeProductLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color(0xFF333333),
      ),
      margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
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
                  'assets/sampleimages/pickles.png',
                ),
                fit: BoxFit.fitWidth
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.only(top: 8.0, left: 16.0),
                child: Text(
                  'Product',
                  style: TextStyle(
                    color: CustomTheme.instance.letter,
                    fontSize: 60
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 8.0, left: 24.0),
                width: double.infinity,
                child: Text(
                  'We released simple Chrome extention "Pickles".',
                  style: TextStyle(
                    color: CustomTheme.instance.letter,
                    fontSize: 36
                  ),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.topRight,
            padding: const EdgeInsets.only(top: 16.0, left: 36.0, right: 36.0),
            width: double.infinity,
            child: Text(
              '2022/12/24 12:04',
              style: TextStyle(
                color: CustomTheme.instance.letter,
                fontSize: 24
              ),
            ),
          ),
        ],
      ),
    );
  }
}
