import 'package:flutter/material.dart';

import 'package:squideck/constants/custom_theme.dart';


class LargeAboutLink extends StatelessWidget {
  const LargeAboutLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color(0xFF333333),
      ),
      margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 40),
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
                  'assets/sampleimages/post.png',
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
        ],
      ),
    );
  }
}
