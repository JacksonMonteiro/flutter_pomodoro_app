import 'package:flutter/material.dart';
import 'package:pomodoro/components/cronometer_button.dart';

class Cronometer extends StatelessWidget {
  const Cronometer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'Time to work',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          '25:00',
          style: TextStyle(
            fontSize: 81,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Padding(
                padding: EdgeInsets.only(right: 10),
                child: CronometerButton(text: 'Start', icon: Icons.play_arrow)),
            // Padding(
            //   padding: EdgeInsets.only(rigth: 10),
            //   child: CronometerButton(text: 'Stop', icon: Icons.stop),
            // ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: CronometerButton(text: 'Restart', icon: Icons.refresh),
            ),
          ],
        )
      ]),
    );
  }
}
