import 'package:flutter/material.dart';

import 'package:squideck/constants/custom_theme.dart';


class LargeLinkFrame extends StatelessWidget {
  List<Widget> frameChild;
  String backgroundImage;

  LargeLinkFrame(
    {
      super.key,
      required this.frameChild,
      required this.backgroundImage
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
      margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20, bottom: 20),
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
