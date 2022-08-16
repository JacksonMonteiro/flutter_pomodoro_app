import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class TimeEntry extends StatelessWidget {
  final int value;
  final String title;
  final void Function()? increment;
  final void Function()? decrement;

  const TimeEntry({
    Key? key,
    required this.value,
    required this.title,
    this.increment,
    this.decrement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Observer(
          builder: (_) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: increment,
                style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(10),
                    primary: store.isWorking() ? Colors.red : Colors.green),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
              Text(
                '$value min',
                style: const TextStyle(fontSize: 18),
              ),
              ElevatedButton(
                onPressed: decrement,
                style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(10),
                    primary: store.isWorking() ? Colors.red : Colors.green),
                child: const Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
