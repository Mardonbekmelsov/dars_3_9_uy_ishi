import 'package:dars_3_9_uy_ishi/model/course.dart';
import 'package:dars_3_9_uy_ishi/model/lesson.dart';
import 'package:dars_3_9_uy_ishi/views/screens/course_screen.dart';
import 'package:dars_3_9_uy_ishi/views/screens/lesson_screen.dart';
import 'package:dars_3_9_uy_ishi/views/screens/main_screen.dart';
import 'package:dars_3_9_uy_ishi/views/screens/note_screen.dart';
import 'package:dars_3_9_uy_ishi/views/screens/settings_screen.dart';
import 'package:dars_3_9_uy_ishi/views/screens/todo_screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
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
         else if (settings.name == "/course") {
          return MaterialPageRoute(builder: (context) {
            return CourseScreen(course: settings.arguments as Course,);
          });
        }
         else if (settings.name == "/lesson") {
          return MaterialPageRoute(builder: (context) {
            return LessonScreen(lesson: settings.arguments as Lesson,);
          });
        }
        
        return MaterialPageRoute(builder: (context) => MainScreen());
      },
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
