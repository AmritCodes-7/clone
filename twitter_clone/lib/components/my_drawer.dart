// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:twitter_clone/components/my_drawer_tile.dart';
import 'package:twitter_clone/pages/settings_page.dart';

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              // app logo
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Column(
                  children: [
                    Icon(
                      Icons.person,
                      size: 70,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    Text(
                      "Amrit Tamang",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),

              // a divider line
              Divider(
                indent: 30,
                endIndent: 30,
                color: Theme.of(context).colorScheme.secondary,
              ),

              // home
              MyDrawerTile(
                title: 'H O M E',
                icon: Icons.home,
                onTap: () {
                  // use pop as we are already in HomePage
                  Navigator.pop(context);
                },
              ),

              // profile
              MyDrawerTile(
                title: "P R O F I L E",
                icon: Icons.person,
                onTap: () {},
              ),

              // settings
              MyDrawerTile(
                title: "S E T T I N G S",
                icon: Icons.settings,
                onTap: () {
                  // pop drawer
                  Navigator.pop(context);

                  // push to SettingsPage
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingsPage(),
                    ),
                  );
                },
              ),

              // logout
              MyDrawerTile(
                title: "L O G O U T",
                icon: Icons.logout,
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
