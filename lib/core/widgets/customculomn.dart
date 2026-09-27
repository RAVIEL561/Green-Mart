import 'package:flutter/material.dart';
class customculomn extends StatelessWidget {
  const customculomn({
    super.key,
    required this.num,
    required this.alpha,
  });

  final String num;
  final String alpha;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              num,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          if (alpha.isNotEmpty)
            Center(
              child: Text(
                alpha,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
        ],
      ),
    );
  }
}