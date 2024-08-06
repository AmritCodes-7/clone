import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
creating a list tile for setting
*/

class MySettingTile extends StatelessWidget {
  final String title;
  final Widget action;
  const MySettingTile({
    super.key,
    required this.title,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(10),
      ),

      // giving margin
      margin: const EdgeInsets.only(
        left: 25,
        right: 25,
        top: 10,
      ),

      // giving padding
      padding: const EdgeInsets.all(25),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // title
          Text(title),

          // action
          action,
        ],
      ),
    );
  }
}
