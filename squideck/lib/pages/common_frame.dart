import 'package:flutter/material.dart';
import 'package:squideck/constants/custom_theme.dart';

class CommonFrame extends StatelessWidget {
  Widget contents;

  CommonFrame({
    super.key,
    required this.contents
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      color: CustomTheme.instance.containerBgColor,
      child: contents,
    );
  }
}
