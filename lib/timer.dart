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
                    setState(() {});
                  },
                  child: const Text('Waiting time'),
                ),
              ],
            ))));
  }
}
/*
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
                    second = second - 1;
                  },
                  child: const Text('Waiting time'),
                ),
              ],
            )))
*/