import 'package:flutter/material.dart';

bool safemode = false;

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Homescreen(),
        '/settings': (context) => const settings(),
        '/thirt': (context) => const settings(),
      },
    ),
  );
}

class Homescreen extends StatelessWidget {
  const Homescreen({key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home Screen"),
        ),
        body: Center(
            child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/thirt');
              },
              child: const Text('Waiting time'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/settings');
              },
              child: const Text('settings'),
            ),
          ],
        )),
      ),
    );
  }
}

class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.width,
        width: MediaQuery.of(context).size.height,
        child: Scaffold(
            appBar: AppBar(
              title: Text("Settings"),
            ),
            body: Center(
                child: Column(
              children: [],
            ))));
  }
}
