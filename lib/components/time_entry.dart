import 'package:flutter/material.dart';

class TimeEntry extends StatelessWidget {
  final int value;
  final String title;

  const TimeEntry({
    Key? key,
    required this.value,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(10),
                  primary: Colors.red),
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            Text(
              '$value min',
              style: TextStyle(fontSize: 18),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(10),
                  primary: Colors.red),
              child: const Icon(
                Icons.remove,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
