import 'package:flutter/material.dart';

class Cronometer extends StatelessWidget {
  const Cronometer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
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
      ]),
    );
  }
}
