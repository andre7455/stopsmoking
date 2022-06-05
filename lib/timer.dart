import 'package:flutter/material.dart';

class timer extends StatefulWidget {
  const timer({Key? key}) : super(key: key);

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
              title: Text("timer"),
            ),
            body: Center(
                child: Column(
              children: [],
            ))));
  }
}
