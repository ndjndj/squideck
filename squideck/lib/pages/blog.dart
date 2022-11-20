import 'package:flutter/material.dart';
import 'package:squideck/widgets/large_post_link.dart';

import 'package:squideck/widgets/post_top.dart';
import 'package:squideck/constants/custom_theme.dart';

class Blog extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
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
            LargePostLink(),
            LargePostLink(),
            LargePostLink(),
            LargePostLink(),
          ],
        )
      ),
    );
  }
}
