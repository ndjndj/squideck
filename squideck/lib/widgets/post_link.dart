import 'package:flutter/material.dart';

import 'package:squideck/constants/custom_theme.dart';
import 'package:squideck/constants/route.dart';
import 'package:squideck/widgets/large_link_frame.dart';


class PostLink extends StatelessWidget {
  Map<String, double> margins;

  PostLink(
    {
      super.key,
      this.margins = const {'l': 20, 't': 20, 'r': 20, 'b': 20},
    }
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, RouteGenerator.blog),
      child: LargeLinkFrame(
        margins: margins,
        height: 200,
        backgroundImage: 'assets/sampleimages/post.png',
        frameChild: <Widget> [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 24.0, left: 24.0),
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
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 8.0),
                      child: Text(
                        'Posted by ndj',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: CustomTheme.instance.letter,
                        ),
                      ),
                    ),
                    Text(
                      '2022/10/31 12:31',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: CustomTheme.instance.letter,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ]
      )
    );
  }
}
