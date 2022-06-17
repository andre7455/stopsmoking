import 'package:flutter/material.dart';
import 'dart:async';

int minute = 5;
int second = 4;

class timer extends StatefulWidget {
  timer({Key? key}) : super(key: key);

  @override
  State<timer> createState() => _timerState();
}

class _timerState extends State<timer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.width,
        width: MediaQuery.of(context).size.height,
        child: Scaffold(
            appBar: AppBar(
              title: Text(second.toString()),
            ),
            body: Center(
                child: Column(
              children: [
                Text(second.toString()),
                ElevatedButton(
                  onPressed: () {
                    scheduleTimeout(5 * 1000);
                  },
                  child: const Text('Waiting time'),
                ),
              ],
            ))));
  }
}

void main() {
  // 5 seconds.
}

Timer scheduleTimeout([int milliseconds = 10000]) =>
    Timer(Duration(milliseconds: milliseconds), handleTimeout);

void handleTimeout() {
  second = second + 1;
}
