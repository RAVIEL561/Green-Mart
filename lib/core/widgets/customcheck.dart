import 'package:app_3/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class customcheck extends StatelessWidget {
  const customcheck({
    super.key, required this.t, required this.d,
  });
  final String t;
  final String d;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(t,style: TextStyle(color: const Color.fromARGB(255, 123, 122, 122),fontSize: 22,fontWeight: FontWeight.w700),
        ),
        Row(
          children: [
          Text(d,style: TextStyle(color: AppColors.blackColor,fontSize: 24,fontWeight: FontWeight.w600),
          ),
          SizedBox(width: 8,),
          Icon(Icons.arrow_forward_ios,color: AppColors.blackColor,)
          ],
        ),
     ],
    );
  }
}