import 'package:dars_3_9_uy_ishi/views/screens/main_screen.dart';
import 'package:dars_3_9_uy_ishi/views/screens/note_screen.dart';
import 'package:dars_3_9_uy_ishi/views/screens/settings_screen.dart';
import 'package:dars_3_9_uy_ishi/views/screens/todo_screens.dart';
import 'package:flutter/material.dart';

class Routes {
  static pageRoute(RouteSettings settings) {
    if (settings.name == "/todo") {
      return MaterialPageRoute(builder: (context) {
        return ToDoScreen();
      });
    } else if (settings.name == "/main") {
      return MaterialPageRoute(builder: (context) {
        return MainScreen();
      });
    } else if (settings.name == "/settings") {
      return MaterialPageRoute(builder: (context) {
        return SettingsScreen();
      });
    } else if (settings.name == "/note") {
      return MaterialPageRoute(builder: (context) {
        return NoteScreen();
      });
    }
    return MaterialPageRoute(builder: (context) => MainScreen());
  }
}
