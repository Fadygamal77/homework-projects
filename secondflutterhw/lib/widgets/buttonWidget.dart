import 'package:flutter/material.dart';

class buttonWidget extends StatelessWidget {
  final Color color;
  final String text;
  const buttonWidget({
    super.key,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 200,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      child: Center(
          child: Text(
        text,
        style: const TextStyle(
            color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
      )),
    );
  }
}
