import 'package:app_3/core/utils/app_colors.dart';
import 'package:app_3/feature/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:app_3/core/widgets/main_button.dart';
import 'package:app_3/core/functions/Navigations.dart';
import 'package:app_3/feature/login/login.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Stack(
        children: [
          Image.asset("assets/welcome_png.png",width: double.infinity,height: double.infinity,fit: BoxFit.cover,),
          Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset("assets/carrot.svg"),
                  SizedBox(height: 30,),
                Text("Welcome \n to our store ",
                textAlign:TextAlign.center,
                style: TextStyle(fontSize: 40,fontWeight: FontWeight.w600,color: Colors.white),),
                Text("Get your groceries as fast as one hour ",style: TextStyle(fontSize: 20,color: Colors.white),),
                SizedBox(height: 20,),
                MainButton( 
                  text: "Get started",               
                onPressed: () {
                 pushReplacement(context, Login());
  },
),
  
              ],
            ),
          ),
        ],
      ),
    );
  }
}