import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'dart:async';

bool safemode = false;

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Homescreen(),
        '/second': (context) => const Flashing(),
        '/thirt': (context) => const Settings(),
      },
    ),
  );
}

class Homescreen extends StatelessWidget {
  const Homescreen({key});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 667,
        width: 500,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Home Screen"),
          ),
          body: Center(
              child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                },
                child: const Text('Flashing screen'),
              ),
              FloatingActionButton(
                  child: const Icon(Icons.settings),
                  onPressed: () {
                    Navigator.pushNamed(context, '/thirt');
                  })
            ],
          )),
        ),
      )
    ]);
  }
}

class Flashing extends StatefulWidget {
  const Flashing({key});

  @override
  State<Flashing> createState() => _FlashingState();
}

class _FlashingState extends State<Flashing> {
  bool _isNear = false;
  bool opacity = false;
  late StreamSubscription<dynamic> _streamSubscription;

  @override
  void initState() {
    super.initState();
    listenSensor();
  }

  @override
  void dispose() {
    super.dispose();
    _streamSubscription.cancel();
  }

  Future<void> listenSensor() async {
    FlutterError.onError = (FlutterErrorDetails details) {
      if (foundation.kDebugMode) {
        FlutterError.dumpErrorToConsole(details);
      }
    };
  }

  Widget build(BuildContext context) {
    return Opacity(
        opacity: opacity ? 0.0 : 1.0,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => Navigator.pop(context),
          child: Scaffold(
              body: Image.asset(
            "assets/images/flash.gif",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          )),
        ));
  }
}

class Settings extends StatefulWidget {
  const Settings({key});
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 667,
        width: 500,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Settings'),
          ),
          body: Center(
              child: Column(
            children: [
              const Text("Safemode"),
              Switch(
                value: safemode,
                onChanged: (value) {
                  setState(() {
                    safemode = value;
                  });
                },
              ),
            ],
          )),
        ),
      )
    ]);
  }
}
