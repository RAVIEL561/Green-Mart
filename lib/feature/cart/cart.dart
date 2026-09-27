import 'package:app_3/core/functions/Navigations.dart';
import 'package:app_3/core/widgets/customrow.dart';
import 'package:app_3/feature/mycart/mycart.dart';
import 'package:flutter/material.dart';
import 'package:app_3/core/utils/app_colors.dart';
import 'package:app_3/core/utils/app_icons.dart';
import 'package:flutter_svg/svg.dart';
import 'package:app_3/feature/shop/shop.dart';
import 'package:app_3/core/widgets/main_button.dart';
import 'package:app_3/feature/cart/cart.dart';
import 'package:app_3/feature/mycart/mycart.dart';
class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffffff), 
        leading: IconButton(onPressed: (){
          pushTo(context, Shop());
        }, icon: Icon(Icons.arrow_back_ios)),
        actions: [
          SvgPicture.asset(AppIcons.share),
        ],
      ),
      body: 
         SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          scrollDirection: Axis.vertical,
           child: Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                    color: Color.fromARGB(255, 239, 238, 238),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                    )
                    ),
                    width: double.infinity,
                  child:Container(
                    width: double.infinity,
                    child: Image.asset("assets/appleasset.png")) ,
                  ),
                  SizedBox(height: 24,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Natural Red Apple", style: TextStyle(color: AppColors.blackColor,fontSize: 20,fontWeight: FontWeight.w600),),
                      Icon(Icons.favorite_border,size: 24,),
                    ],
                  ),
                  SizedBox(height: 16,),
                  Text("1 kg",style: TextStyle(color: const Color.fromARGB(255, 141, 142, 144),fontSize: 16)),
                  SizedBox(height: 24,),
           
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                    children: [
                      customrow(),
                    Text("\$4.99",style: TextStyle(color: AppColors.blackColor,fontSize: 30,fontWeight: FontWeight.w700)),
                    ],
                  ),
                  SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Product Detail",style: TextStyle(color: AppColors.blackColor,fontSize: 24,fontWeight: FontWeight.w600),),
                      Icon(Icons.keyboard_arrow_down,size: 34,color: AppColors.blackColor,),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text("Apples Are Nutritious.Apples May Be Good For Weight Loss. Apples May be Good For Your Heart. As Part Of A Healthful And varied Diet.",style: TextStyle(color: AppColors.garyColor,fontSize: 14),),
                  SizedBox(height: 40,),
           
           
           
           
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [    
                      Text("Nutritions",style: TextStyle(color: AppColors.blackColor,fontSize: 24,fontWeight: FontWeight.w600),),
                      Row(
                        children: [
                        Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: Text("100gr",style: TextStyle(color: AppColors.blackColor,fontSize: 16),),
                      decoration: BoxDecoration(
                       color: const Color.fromARGB(255, 229, 229, 230),
                       borderRadius: BorderRadius.circular(6),
                      
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_right,size: 34,color: AppColors.blackColor,),
                        ],
                      ),
                     ],
                   ),
                   SizedBox(height: 40,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Review",style: TextStyle(color: AppColors.blackColor,fontSize: 24,fontWeight: FontWeight.w600),),
                    Row(
                children: [
                  Icon(Icons.star,color: Colors.deepOrange,),
                  Icon(Icons.star,color: Colors.deepOrange,),
                  Icon(Icons.star,color: Colors.deepOrange,),
                  Icon(Icons.star,color: Colors.deepOrange,),
                  Icon(Icons.star,color: Colors.deepOrange,),
                  Icon(Icons.keyboard_arrow_right,size: 34,color: AppColors.blackColor,),
                ],
                   ),
                    ],
                   ),
                ],
              ),
            ),
                   ),
         ),
         bottomNavigationBar: Padding(padding: EdgeInsetsGeometry.all(16),
         child: MainButton(onPressed: (){
          pushTo(context, Mycart());
         }, text: "Add To Cart"),),    
    );
  }
}
