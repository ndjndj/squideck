import 'package:flutter/material.dart';
import 'package:squideck/constants/custom_theme.dart';

class Blog extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 8.0),
            width: double.infinity,
            child: Text(
              'Blog posts',
              style: TextStyle(
                color: CustomTheme.instance.letter,
                fontSize: 36,
              )
            ),
          ),
          Container(
            color:Color(0xFFFAFAFA),
            width: double.infinity,
            height: 400,
            child: const Center(
              child: Text('post1')
            ),
          )
        ],
      )
    );
  }
}
