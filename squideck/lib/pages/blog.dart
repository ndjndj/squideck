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
                fontSize: 60,
              )
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 4.0),
            decoration: const BoxDecoration(
              color:Color(0xFFFAFAFA),
              borderRadius: BorderRadius.all(
                Radius.circular(10.0)
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: 400,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    image: DecorationImage(
                      image: NetworkImage('assets/squid.png'),
                      fit: BoxFit.fitWidth
                    )
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 4.0, top: 16),
                  width: double.infinity,
                  child: const Text(
                    'When my muscles say "No", I say "Yes".',
                    style: TextStyle(
                      fontSize: 36,
                    ),
                  ),
                ),
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
