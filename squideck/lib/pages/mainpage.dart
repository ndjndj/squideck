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
              LargePostLink(margins: {'l':20,'t':100,'r':20,'b': 20},),
              LargeProductLink(),
              LargeAboutLink()
            ]
          ),
        ),
      )
    );
  }
}
