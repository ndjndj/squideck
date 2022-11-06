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
    final List<String> appbarItem = ['blog', 'products', 'about'];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SquidecK',
          style: TextStyle(color: CustomTheme.instance.letter)
        ),
        backgroundColor: CustomTheme.instance.appBar,
        leading: IconButton(
          icon: const CircleAvatar(
            backgroundImage: NetworkImage('assets/squid.png'),
            backgroundColor: Colors.white,
          ),
          onPressed: (){return;},
        ),
        actions: List.generate(appbarItem.length,
          (index) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/${appbarItem[index]}'),
                  child: Text(
                    appbarItem[index],
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                )
              )
            );
          }
        )
      ),
      body: Container(
        key: key,
        color: CustomTheme.instance.containerBgColor,
        child: contents,
      )
    );
  }
}
