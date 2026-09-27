import 'package:app_3/feature/shop/shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:app_3/core/utils/app_colors.dart';
import 'package:app_3/core/widgets/main_button.dart';
import 'package:app_3/core/functions/Navigations.dart';
class Final extends StatelessWidget {
  const Final({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
            width: double.infinity,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             SvgPicture.asset("assets/correct.svg"),
             SizedBox(height: 60,),
             Text("Your order has been \n accepted",
             textAlign: TextAlign.center,
             style: TextStyle(color: 
             AppColors.blackColor,fontSize: 30,
             fontWeight: FontWeight.w700),),
             SizedBox(height: 20),
             Text("Your items has been placed and is on \n it`s  way to being processed",textAlign: 
             TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: 
             FontWeight.w600,color: const Color.fromARGB(255, 131, 132, 135)),),
            SizedBox(height: 60,),
              MainButton(onPressed: (){
              }, text: "Go TO Home")
            ],
          ),
        ),
      ),
    );
  }
}