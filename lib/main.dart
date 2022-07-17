import 'package:flutter/material.dart';

//importing my own pages
import 'timer.dart';
import 'settings.dart';
import 'home.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Homescreen(),
        '/settings': (context) => const settings(),
        '/timer': (context) => StopWatchTimerPage(),
      },
    ),
  );
}
