import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width,
      width: MediaQuery.of(context).size.height,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home Screen"),
        ),
        body: Center(
            child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/timer');
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
