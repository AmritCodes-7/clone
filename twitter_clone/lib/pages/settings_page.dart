import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twitter_clone/components/my_setting_tile.dart';
import 'package:twitter_clone/themes/theme_provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffolf
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,

      // App bar
      appBar: AppBar(
        title: const Text("S E T T I N G S"),
        centerTitle: true,
        foregroundColor: Theme.of(context).colorScheme.primary,
      ),

      // body
      body: Column(
        children: [
          // Dark mode tile
          MySettingTile(
            title: "Dark Mode",
            action: CupertinoSwitch(
              value:
                  Provider.of<ThemeProvider>(context, listen: false).isDarkMode,
              onChanged: (value) =>
                  Provider.of<ThemeProvider>(context, listen: false)
                      .toggleTheme(),
            ),
          )
          // Block user tile

          // Account Settings
        ],
      ),
    );
  }
}
