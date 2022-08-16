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
      children: [
        Text(title),
        Text('$value'),
      ],
    );
  }
}
