import 'package:flutter/material.dart';
import 'package:app_3/core/utils/app_colors.dart';


class MainButton extends StatelessWidget {
  final VoidCallback onPressed;

  const MainButton({
    super.key,
    required this.onPressed,
    required this.text
  });
  final String  text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(10),
        ),
      ),
      onPressed: onPressed,
      child: Text( text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}