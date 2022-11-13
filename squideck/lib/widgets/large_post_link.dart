import 'package:flutter/material.dart';

import 'package:squideck/constants/custom_theme.dart';
import 'package:squideck/widgets/large_link_frame.dart';


class LargePostLink extends StatelessWidget {
  Map<String, double>? margin = {'l': 20, 't': 20, 'r': 20, 'b': 20};

  LargePostLink(
    {
      super.key,
      margin
    }
  );

  @override
  Widget build(BuildContext context) {
    return LargeLinkFrame(
      margin: margin,
      backgroundImage: 'assets/sampleimages/post.png',
      frameChild: <Widget> [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.only(top: 8.0, left: 16.0),
              child: Text(
                'Post',
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
                'When my muscles say "No", I say "Yes".',
                style: TextStyle(
                  color: CustomTheme.instance.letter,
                  fontSize: 36
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 16.0, left: 36.0, right: 36.0),
              width: double.infinity,
              child: Text(
                'TextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTe',
                style: TextStyle(
                  color: CustomTheme.instance.letter,
                  fontSize: 24
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
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
      ]
    );
  }
}
