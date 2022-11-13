import 'package:flutter/material.dart';

import 'package:squideck/constants/custom_theme.dart';
import 'package:squideck/constants/route.dart';
import 'package:squideck/widgets/large_link_frame.dart';


class LargeProductLink extends StatelessWidget {
  Map<String, double> margins;

  LargeProductLink(
    {
      super.key,
      this.margins = const {'l': 20, 't': 20, 'r': 20, 'b': 20}
    }
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, RouteGenerator.products),
      child: LargeLinkFrame(
        margins: margins,
        backgroundImage: 'assets/sampleimages/pickles.png',
        frameChild: <Widget> [
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
          )
        ]
      )
    );
  }
}
