import 'package:flutter/material.dart';

class StartWidget extends StatelessWidget {
  const StartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xff8160b9),
          borderRadius: BorderRadius.circular(18)),
      height: 152,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hello! 👋",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "Try your best to build this ui",
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xff673bb7),
                  borderRadius: BorderRadius.circular(15)),
              height: 45,
              width: double.infinity,
              child: const Center(
                child: Text(
                  "Get Started",
                  style:
                      TextStyle(color: Colors.white, fontSize: 19),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
