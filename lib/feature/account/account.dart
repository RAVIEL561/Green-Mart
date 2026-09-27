import 'package:app_3/core/widgets/customaccount.dart';
import 'package:flutter/material.dart';
import 'package:app_3/core/utils/app_colors.dart';
class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Raviel Wael",style: TextStyle(color: AppColors.blackColor,fontSize: 26,fontWeight: FontWeight.w700),),
                SizedBox(width: 10,),
                Icon(Icons.edit,color: AppColors.primaryColor,size: 24,)
              ],
            ),
           Text("raviel@gmail.com",style: TextStyle(color: AppColors.garyColor,fontSize: 18),),
          ],
        ),
        leadingWidth: 150,
        toolbarHeight: 200,
        leading: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/account.jpg",),
            radius: 40,
          ),     
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: double.infinity,
          child: Column(
        children: [
          customaccount(data: Icons.shopping_bag_outlined,text: "Orders",),
          SizedBox(height: 24,),
          customaccount(data: Icons.badge_outlined,text: "My Details",),
                    SizedBox(height: 24,),

          customaccount(data: Icons.payment_outlined,text: "Payment Method",),
                    SizedBox(height: 24,),
          customaccount(data: Icons.place_outlined ,text: "Delivery Address",),
                    SizedBox(height: 24,),

          customaccount(data: Icons.local_offer_outlined,text: "Promo Cord/Code",),
                    SizedBox(height: 24,),
          customaccount(data: Icons.notifications_none_outlined,text: "Notifications",),
                    SizedBox(height: 24,),
          customaccount(data: Icons.help_outline,text: "Help",),
                    SizedBox(height: 24,),
          customaccount(data: Icons.info_outline,text: "About",),
                    SizedBox(height: 40,),
          ElevatedButton(
           style:  ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 15),
             backgroundColor: const Color.fromARGB(255, 231, 229, 229),
             shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(16),
            
             )
            ),
            onPressed: (){}, child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.login,size: 28,color: AppColors.primaryColor,),
              SizedBox(width: 8,),
              Text(
                "Log out",style: TextStyle(color: AppColors.primaryColor,fontSize: 22,fontWeight:FontWeight.w600 ),
              ),
            ],
          ))
        ],
          ),
        ),
      ),
    );
  }
}
