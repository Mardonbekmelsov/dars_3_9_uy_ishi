import 'package:flutter/material.dart';
import '../screens/main_screen.dart';
import '../screens/note_screen.dart';
import '../screens/settings_screen.dart';
import '../screens/todo_screens.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "MENYU",
                ),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacementNamed(context, "/main");
            },
            title: const Text(
              "Bosh sahifa",
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_right,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacementNamed(context, "/todo");
            },
            title: const Text(
              "ToDo",
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_right,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacementNamed(context, "/note");
            },
            title: const Text(
              "Note",
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_right,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacementNamed(context, "/settings");
            },
            title: const Text(
              "Settings",
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_right,
            ),
          ),
        ],
      ),
    );
  }
}
