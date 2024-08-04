// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

/*
  DRAWER

  This is a menu drawer which is on the left top side of an app

  ------------------------------------------------------------------

  Contains 5 options: 
  - Home 
  - Profile
  - Settings
  - Logout

*/

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // Creating Drawer
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: SafeArea(
        child: Column(
          children: [
            // app logo
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Icon(
                Icons.person,
                size: 70,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),

            // a divider line
            Divider(
              indent: 30,
              endIndent: 30,
              color: Theme.of(context).colorScheme.secondary,
            )

            // home

            // profile

            // settings

            // logout
          ],
        ),
      ),
    );
  }
}
