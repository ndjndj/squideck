import 'package:flutter/material.dart';

import 'package:squideck/constants/custom_theme.dart';


class LargeLinkFrame extends StatelessWidget {
  List<Widget> frameChild;
  String backgroundImage;
  Map<String, double> margins;

  LargeLinkFrame(
    {
      super.key,
      required this.frameChild,
      required this.backgroundImage,
      this.margins = const {'l': 20.0, 't': 20, 'r': 20, 'b': 20}
    }
  );

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      height: 300,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color(0xFF333333),
      ),
      margin: EdgeInsets.only(
        left: margins['l']!,
        right: margins['r']!,
        top: margins['t']!,
        bottom: margins['b']!,
      ),
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
                image: NetworkImage(
                  backgroundImage,
                ),
                fit: BoxFit.fitWidth
              ),
            ),
          ),
          ...frameChild
        ],
      ),
    );
  }
}
