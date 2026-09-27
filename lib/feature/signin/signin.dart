import 'package:app_3/feature/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:app_3/core/utils/app_colors.dart';
import 'package:app_3/core/functions/Navigations.dart';
import 'package:app_3/core/widgets/customform.dart';
import 'package:app_3/core/widgets/main_button.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        leading: IconButton(onPressed: (){
           pushTo(context,Login());
        }, icon: Icon(Icons.arrow_back_ios ,color: AppColors.blackColor,)),
      ),
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/carrot-colors.svg"),
              SizedBox(height: 40,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
             Text("Sign up",style: TextStyle(color: AppColors.blackColor,fontSize: 30,fontWeight: FontWeight.w600),),
             SizedBox(height: 16,),
             Text("Enter your credentials to continue  ",style: TextStyle(color: AppColors.garyColor,fontSize: 18),),
             SizedBox(height: 40,),
             Text("Name",style: TextStyle(color:AppColors.blackColor,fontSize: 18,fontWeight: FontWeight.w600)),
             customField(hintText: "Raviel Wael"),
             SizedBox(height: 16,),
             Text("Email",style: TextStyle(color:AppColors.blackColor,fontSize: 18,fontWeight: FontWeight.w600)),
             customField(hintText: "example@gmail.com"),
             SizedBox(height: 16,),
              Text("Password",style: TextStyle(color:AppColors.blackColor,fontSize: 18,fontWeight: FontWeight.w600)),
             customField(hintText: "*********"),
             SizedBox(height: 30,),
             MainButton(onPressed: (){}, text:"Sign in"),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                Text("Already have account ?",style: TextStyle(color: AppColors.blackColor,fontSize: 18,fontWeight: FontWeight.w600)),
                 TextButton(onPressed: (){
                  pushTo(context, Login());
                 }, child:Text("Log in",style: TextStyle(color: AppColors.primaryColor,fontSize: 18,fontWeight: FontWeight.w600)),),
               ],
             ),
                ],
              ),
            ],
          ),
        ),
      ) ,
    );
  }
}