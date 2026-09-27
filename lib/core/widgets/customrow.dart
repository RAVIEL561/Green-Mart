import 'package:app_3/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class customrow extends StatelessWidget {
  const customrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(   
      children: [
        Icon(Icons.remove,color: AppColors.garyColor,size: 30,),
        SizedBox(width: 20,),
        Container(
          alignment: Alignment.center,
          width: 40,
          child: Text("1",style: TextStyle(color: AppColors.blackColor,fontSize: 28),),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.garyColor),
            borderRadius: BorderRadius.circular(16),
          ), 
        ),
        SizedBox(width: 20,),
        Icon(Icons.add,color: AppColors.primaryColor,size: 30,),
      ],
    );
  }
}
