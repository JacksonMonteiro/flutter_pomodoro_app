import 'package:flutter/material.dart';
import 'package:pomodoro/components/cronometer.dart';
import 'package:pomodoro/components/time_entry.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        const Expanded(child: Cronometer()),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            TimeEntry(value: store.workTime, title: 'Work'),
            TimeEntry(value: store.restTime, title: 'Rest'),
          ]),
        ),
      ]),
    );
  }
}
