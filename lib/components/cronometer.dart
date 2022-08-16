import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/cronometer_button.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Cronometer extends StatelessWidget {
  const Cronometer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Observer(
      builder: (_) => Container(
        color: store.isWorking() ? Colors.red : Colors.green,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            store.isWorking() ? 'Time to work' : 'Time to rest',
            style: const TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            '${store.minutes.toString().padLeft(2, '0')}:${store.seconds.toString().padLeft(2, '0')}',
            style: const TextStyle(
              fontSize: 81,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Observer(
            builder: (_) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (!store.isStarted)
                  Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: CronometerButton(
                        text: 'Start',
                        icon: Icons.play_arrow,
                        click: store.start,
                      )),
                if (store.isStarted)
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: CronometerButton(
                      text: 'Stop',
                      icon: Icons.stop,
                      click: store.stop,
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: CronometerButton(
                    text: 'Restart',
                    icon: Icons.refresh,
                    click: store.restart,
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
