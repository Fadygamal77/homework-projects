import 'package:flutter/material.dart';

class featureWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;
  final Color containerColor;
  const featureWidget({
    super.key,
    required this.color,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.containerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
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
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
              color: containerColor, borderRadius: BorderRadius.circular(5)),
          height: 42,
          width: 42,
          child: Icon(
            icon,
            color: color,
            size: 24,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Text(subtitle, style: const TextStyle(color: Colors.grey)),
        trailing:
            const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 18),
      ),
    );
  }
}
