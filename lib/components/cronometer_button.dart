import 'package:flutter/material.dart';

class CronometerButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? click;

  const CronometerButton({
    Key? key,
    required this.text,
    required this.icon,
    this.click,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: click,
      style: ElevatedButton.styleFrom(
          primary: Colors.black,
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 12,
          ),
          textStyle: const TextStyle(
            fontSize: 18,
          )),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              icon,
              size: 24,
              color: Colors.white,
            ),
          ),
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
