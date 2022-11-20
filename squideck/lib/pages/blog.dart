import 'package:flutter/material.dart';

import 'package:squideck/widgets/post_top.dart';
import 'package:squideck/constants/custom_theme.dart';

class Blog extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 8.0),
            width: double.infinity,
            child: Text(
              'Blog posts',
              style: TextStyle(
                color: CustomTheme.instance.dark,
                fontSize: 60,
              )
            ),
          ),
          PostTop(),
        ],
      )
    );
  }
}
