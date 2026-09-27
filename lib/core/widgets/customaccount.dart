import 'package:app_3/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class customaccount extends StatelessWidget {
  const customaccount({
    super.key, required this.text, required this.data,
  });
  final String text;
  final IconData data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(data ,color: AppColors.blackColor,size: 24,),
        SizedBox(width: 10,),
        Text(text, style: TextStyle(color: AppColors.blackColor,fontSize: 22,fontWeight: FontWeight.w600),),
        const Spacer(),             
        Icon(Icons.arrow_forward_ios,color: AppColors.blackColor,size: 22,),
                 ],
    );
  }
}