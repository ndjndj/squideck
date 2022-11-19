import 'package:flutter/material.dart';


class Blog extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color:Color(0xFFFAFAFA),
            width: double.infinity,
            height: 400,
            child: const Center(
              child: Text('post1')
            ),
          )
        ],
      )
    );
  }
}
