
import 'dart:math';

import 'package:app_3/core/widgets/customproduct.dart';
import 'package:app_3/data/dummydata.dart';
import 'package:flutter/material.dart';
import 'package:app_3/core/utils/app_icons.dart';
import 'package:app_3/core/utils/app_colors.dart';
import 'package:flutter_svg/svg.dart';
import 'package:app_3/feature/cart/cart.dart';
import 'package:flutter/material.dart';
import 'package:app_3/data/dummydata.dart';
import 'package:app_3/data/productmodel.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: SvgPicture.asset("assets/splash.svg",color: AppColors.primaryColor),
      ),
      
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: double.infinity,
            child: Column(
            
              children: [
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Search Store",
                    hintStyle: const TextStyle(fontSize: 20),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 22,
                      color: AppColors.blackColor,
                    ),
                    fillColor: const Color.fromARGB(255, 229, 230, 235),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
              Column(
                children: [
                    Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Exclusive offer",style: TextStyle(color: AppColors.blackColor,fontSize: 28,fontWeight: FontWeight.w700),),
                    TextButton(onPressed: (){}, child: Text("See All",style: TextStyle(color: AppColors.primaryColor,fontSize: 18,fontWeight: FontWeight.w500)),),
                  ],
                ),
                  SizedBox(height: 20,),
                customproduct(product: offerlist,),
                SizedBox(height: 20,),
                   Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Best Selling",style: TextStyle(color: AppColors.blackColor,fontSize: 28,fontWeight: FontWeight.w700),),
                    TextButton(onPressed: (){}, child: Text("See All",style: TextStyle(color: AppColors.primaryColor,fontSize: 18,fontWeight: FontWeight.w500)),),
                  ],
                ),
                    SizedBox(height: 20,),
                    customproduct(product: bestsellinglist,),
                    SizedBox(height: 20,),
                ],
              )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
