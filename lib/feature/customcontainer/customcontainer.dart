import 'package:flutter/material.dart';

class customcontainer extends StatelessWidget {
  const customcontainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     width: 70,
     height: 75,
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(16),
       color: const Color.fromARGB(255, 225, 222, 222),
     ),
    );
  }
}