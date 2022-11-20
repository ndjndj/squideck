import 'package:flutter/material.dart';

import 'package:squideck/widgets/post_top.dart';

class Blog extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          PostTop(),
        ],
      )
    );
  }
}
