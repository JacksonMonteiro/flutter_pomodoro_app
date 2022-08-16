import 'package:flutter/material.dart';
import 'package:pomodoro/components/cronometer.dart';
import 'package:pomodoro/components/time_entry.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        const Expanded(child: Cronometer()),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                TimeEntry(value: 25, title: 'Work'),
                TimeEntry(value: 5, title: 'Rest'),
              ]),
        ),
      ]),
    );
  }
}
