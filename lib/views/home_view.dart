import 'package:flutter/material.dart';
import 'package:pomodoro/components/time_entry.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: const [
        Text('Pomodoro'),
        TimeEntry(value: 25, title: 'Work'),
        TimeEntry(value: 5, title: 'Rest'),
      ]),
    );
  }
}
