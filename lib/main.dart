import 'package:flutter/material.dart';
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
        '/timer': (context) => const timer(),
      },
    ),
  );
}
