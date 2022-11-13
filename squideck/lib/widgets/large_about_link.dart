import 'package:flutter/material.dart';

import 'package:squideck/constants/custom_theme.dart';
import 'package:squideck/widgets/large_link_frame.dart';


class LargeAboutLink extends StatelessWidget {
  Map<String, double>? margin = {'l': 20, 't': 20, 'r': 20, 'b': 20};

  LargeAboutLink(
    {
      super.key,
      margin
    }
  );

  @override
  Widget build(BuildContext context) {

    const List<Map<String, String>> messages = [
      {
        'title' : 'Name',
        'value': 'Yuta Shinzawa'
      },
      {
        'title' : 'Job',
        'value': 'Software developer'
      },
      {
        'title' : 'Admirer',
        'value':'Aimyon, Munenori Kawasaki, Taro okamoto etc.'
      },
    ];
    return LargeLinkFrame(
      margin: margin,
      backgroundImage: 'assets/sampleimages/squid.png',
      frameChild: <Widget> [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.only(top: 8.0, left: 16.0),
              child: Text(
                'About',
                style: TextStyle(
                  color: CustomTheme.instance.letter,
                  fontSize: 60
                ),
              ),
            ),
            ...List.generate(
              messages.length,
              (int i) {
                return Container(
                  padding: const EdgeInsets.only(top: 8.0, left: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 120,
                        child: Text(
                          '${messages[i]['title']}',
                          style: TextStyle(
                            color: CustomTheme.instance.letter,
                            fontSize: 24
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Text(
                            ': ${messages[i]['value']}',
                            style: TextStyle(
                              color: CustomTheme.instance.letter,
                              fontSize: 24
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }
            ),
          ],
        ),
        Container(
          alignment: Alignment.topRight,
          padding: const EdgeInsets.only(top: 16.0, left: 36.0, right: 36.0),
          width: double.infinity,
          child: Text(
            '1994/06/17 02:03',
            style: TextStyle(
              color: CustomTheme.instance.letter,
              fontSize: 24
            ),
          ),
        )
      ]
    );
  }
}
