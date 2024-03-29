import 'package:flutter/material.dart';
import 'package:squideck/constants/custom_theme.dart';
import 'package:squideck/widgets/large_about_link.dart';
import 'package:squideck/widgets/large_product_link.dart';
import 'package:squideck/widgets/large_post_link.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Container(
          color: CustomTheme.instance.containerBgColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              LargePostLink(margins: const {'l': 4,'t': 20,'r': 4,'b': 4},),
              LargeProductLink(margins: const {'l': 4,'t': 0,'r': 4,'b': 4},),
              LargeAboutLink(margins: const {'l': 4,'t': 0,'r': 4,'b': 4},)
            ]
          ),
        ),
      )
    );
  }
}
