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
                color: CustomTheme.instance.dark,
                fontSize: 36,
              )
            ),
          ),
          Container(
            width: double.infinity,
            height: 400,
            decoration: const BoxDecoration(
              color:Color(0xFFFAFAFA),
              borderRadius: BorderRadius.all(
                Radius.circular(10.0)
              ),
            ),
            child: Column(
              children: [
                Container(
                  child: Image.network('assets/squid.png')
                ),
                Container(),
                Container(),
                Container()
              ]
            ),
          )
        ],
      )
    );
  }
}
