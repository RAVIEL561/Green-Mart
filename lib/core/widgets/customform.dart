import 'package:flutter/material.dart';

class customField extends StatelessWidget {
  const customField({
    super.key,
    required this.hintText
  });
  final String ? hintText;
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
    hintText: hintText,
    fillColor:  Color.fromARGB(255, 229, 229, 231),
    filled: true,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide.none,
    ),
              
      ),
    );
  }
}