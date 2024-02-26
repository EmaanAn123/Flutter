// Importing important packages require to connect
// Flutter and Dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts/consts.dart';
import 'package:flutter_application_1/views/splash_screen/splash_screen.dart';

// Main Function
void main() {
// Giving command to runApp() to run the app.

/* The purpose of the runApp() function is to attach
the given widget to the screen. */
  runApp(const MyApp());
}

// Widget is used to create UI in flutter framework.

/* StatelessWidget is a widget, which does not maintain
any state of the widget. */

/* MyApp extends StatelessWidget and overrides its
build method. */
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title of the application
      debugShowCheckedModeBanner: false,
      title: 'app name',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
        fontFamily: regular,
      ),
      home: const SplashScreen(),
    );
  }
}
