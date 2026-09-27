import 'package:app_3/feature/verification/verification.dart';
import 'package:flutter/material.dart';
import 'package:app_3/core/utils/app_colors.dart';
import 'package:app_3/core/widgets/main_button.dart';
import 'package:app_3/core/widgets/customkeypad.dart';
import 'package:app_3/core/widgets/main_button.dart';
import 'package:flutter/services.dart';
import 'package:app_3/core/functions/Navigations.dart';
import 'package:app_3/feature/customcontainer/customcontainer.dart';
import 'package:app_3/feature/shop/shop.dart';
import 'package:app_3/feature/bottombar/bottombar.dart';

class Verificationcode extends StatelessWidget {
  const Verificationcode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
pushTo(context, Verification());
        }, icon: Icon(Icons.arrow_back_ios,size: 28,color: AppColors.blackColor,)),
      ),
      body:Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      
            Text("Enter Verification Code",style: TextStyle(fontSize: 28,color: AppColors.blackColor,fontWeight:FontWeight.bold),),
            Text("We have sent SMS to 01xxxxxxxx",style: TextStyle(fontSize: 18,color: AppColors.garyColor),),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
             customcontainer(),
             customcontainer(),
             customcontainer(),
             customcontainer(),

              ],
            ),
         SizedBox(height: 50,),
         Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
           Text("Change Phone Number",style: TextStyle(fontSize: 18,color: AppColors.blackColor),)
          ],
         ),
         SizedBox(height: 40,),
         MainButton(onPressed: (){
          pushTo(context, Shop());
         }, text: "Confirm"),
         SizedBox(height: 10),
         TextButton(onPressed: (){
         }, child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text("Resend Confirmation Code (1:23)",style: TextStyle(fontSize: 20,color:AppColors.garyColor),),
           ],
         )),
         SizedBox(height: 40,),
         customkeypad(),

          ],
        ),
      ) ,

    );
  }
}

