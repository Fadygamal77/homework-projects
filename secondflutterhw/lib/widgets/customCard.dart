import 'package:flutter/material.dart';

class customCard extends StatelessWidget {
  final IconData icon;
  final String number;
  final String label;
  final Color iconColor;
  const customCard({
    super.key,
    required this.icon,
    required this.number,
    required this.label,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8,
          ),
        ],
      ),
      height: 100,
      width: 110,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Icon(
            icon,
            size: 30,
            color: iconColor,
          ),
          Text(
            number,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            label,
            style: const TextStyle(color: Colors.black54, fontSize: 14),
          )
        ]),
      ),
    );
  }
}
