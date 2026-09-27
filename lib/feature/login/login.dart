import 'package:app_3/core/functions/Navigations.dart';
import 'package:app_3/core/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:app_3/core/utils/app_colors.dart';
import 'package:app_3/core/widgets/customform.dart';
import 'package:app_3/feature/signin/signin.dart';
import 'package:app_3/feature/verification/verification.dart';
import 'package:app_3/feature/bottombar/bottombar.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
               Text("Login",style: TextStyle(color:AppColors.blackColor,fontSize: 24,fontWeight: FontWeight.w600),),
               SizedBox(height: 20,),
               Text("Enter your Email and Password",style: TextStyle(color: AppColors.garyColor,fontSize: 18),),
              SizedBox(height: 40,),
              Text("Email",style: TextStyle(color: AppColors.garyColor,fontSize: 18),),
              customField(hintText: "example@gmail.com",),
               SizedBox(height: 20,),
              Text("Password",style: TextStyle(color: AppColors.garyColor,fontSize: 18),),
              customField(hintText: "**********"),
                  SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: (){
                    pushTo(context, Verification());
                  },
                   child: Text("Forget Password ?",style: TextStyle(color:AppColors.primaryColor,fontSize: 20 ),)),
                ],
              ),
               SizedBox(height: 20,),

              MainButton(
                text:"Login" ,
                onPressed: (){
                  pushTo(context, Bottombar());
                }),
                SizedBox(height: 16,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     TextButton(onPressed: (){
                      pushTo(context,Signin());
                     },
                       child: Text("Don`t have any account ?",style: TextStyle(color:AppColors.blackColor,fontSize: 20 ),)),
                   ],
                 ),
             ],
           )
            ],
          ),
        ),
      ),
    );
  }
}

