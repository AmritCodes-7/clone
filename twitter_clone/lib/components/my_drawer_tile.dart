import 'package:flutter/material.dart';

/*

  DRAWER TILE 

  To use this wodget you need:
  - title (e.g "Home")
  - icon (e.g Icons.home)
  - function (e.g goToHomePage())

*/

class MyDrawerTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function()? onTap;

  const MyDrawerTile({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // returning a listitle
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
      ),
      leading: Icon(
        icon,
        color: Theme.of(context).colorScheme.primary,
      ),
      onTap: onTap,
    );
  }
}
