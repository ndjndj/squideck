import 'package:flutter/material.dart';
import 'package:squideck/constants/custom_theme.dart';

class PostTop extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 4.0),
      decoration: BoxDecoration(
        color: CustomTheme.instance.dark,
        borderRadius: const BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: Column(
        children: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
                image: DecorationImage(
                  image: NetworkImage('assets/squid.png'),
                  fit: BoxFit.fitWidth
                )
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 4.0, top: 16, bottom: 8.0),
              width: double.infinity,
              child: Text(
                'When my muscles say "No", I say "Yes".',
                style: TextStyle(
                  fontSize: 36,
                  color: CustomTheme.instance.letter,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 32.0, right: 32.0, bottom: 16.0),
              child: Text(
                'TextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextText\nxtTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextxtTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextText',
                style: TextStyle(
                  fontSize: 24,
                  color: CustomTheme.instance.letter,
                ),
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
      )
    );
  }
}
