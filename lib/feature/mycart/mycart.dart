import 'package:app_3/core/widgets/customcheck.dart';
import 'package:app_3/feature/cart/cart.dart';
import 'package:flutter/material.dart';
import 'package:app_3/core/utils/app_colors.dart';
import 'package:app_3/core/functions/Navigations.dart';
import 'package:app_3/data/dummydata.dart';
import 'package:app_3/data/productmodel.dart';
import 'package:app_3/core/widgets/customrow.dart';
import 'package:app_3/core/widgets/main_button.dart';
import 'package:app_3/core/widgets/main_button.dart';
import 'package:app_3/feature/final/final.dart';
class Mycart extends StatelessWidget {
  const Mycart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart",style: TextStyle(color: AppColors.blackColor,fontSize: 26,fontWeight: FontWeight.w700),),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          pushTo(context, Cart());
        }, icon: Icon(Icons.arrow_back_ios,color: AppColors.blackColor,)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
             Expanded(
               child: ListView.separated(itemBuilder: (context,index){
                return Row(
                  children: [
                    Image.network(offerlist[index].img,width: 80,height: 80,fit: BoxFit.cover,),
                    SizedBox(width: 25,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(offerlist[index].title,style: TextStyle(color: AppColors.blackColor,fontSize: 26,fontWeight:
                               FontWeight.w600),),
                               Icon(Icons.close,color: AppColors.garyColor,)
                            ],
                          ),
                          SizedBox(height: 10,),
                           Text(offerlist[index].unit,style: TextStyle(fontSize: 20),),
                           SizedBox(height: 16,),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               customrow(),
                               Text(offerlist[index].price,style: TextStyle(color: AppColors.blackColor,fontSize: 26,fontWeight: FontWeight.w600),),
                             ],
                           ),
                        ],
                      ),
                    )
                  ],
                );
               }
               , separatorBuilder:(context,index){
                return Padding(padding: EdgeInsetsGeometry.all(14));
               } , itemCount:offerlist.length),
             )
            ],
          ),
        ),
      ),
      bottomNavigationBar: 
       Padding(padding: EdgeInsets.all(16),
   
       child: Stack(
         children: [
           MainButton(onPressed: (){
         showModalBottomSheet(context: context,
         isScrollControlled: false,
         shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.vertical(top: Radius.circular(20))),
          builder: (context){
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text("Checkout",style: TextStyle(color:  AppColors.blackColor,
                          fontSize: 28,fontWeight: FontWeight.w700),),
                        ),
                        Icon(Icons.close,size: 24,color:AppColors.blackColor,),
                      ],
                    ),
                    SizedBox(height: 15,),     
                  Divider(
                    thickness: 1,
                    height: 1,
                    color: Colors.grey.shade300,
                  ),
                  SizedBox(height: 15,),     
                  customcheck(t: "Delivery",d: "Select Method",),
                  SizedBox(height: 15,),
                     Divider(
                    thickness: 1,
                    height: 1,
                    color: Colors.grey.shade300,
                  ),
                  SizedBox(height: 15,),
                  Row(

mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
              Text("Payment",style: TextStyle(color: const Color.fromARGB(255, 123, 122, 122),fontSize: 22,fontWeight: FontWeight.w700),),
              Row(
                children: [
                  Image.network("https://th.bing.com/th/id/OIP.FtvETY1E_WFX9yKpZ057BwHaE1?w=270&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3",width: 60,height: 40,fit: BoxFit.cover,),
                  SizedBox(width: 8,),
                  Icon(Icons.arrow_forward_ios,color: AppColors.blackColor,),
                ],
              )

                    ],
                  ),
                      SizedBox(height: 15,),
                     Divider(
                    thickness: 1,
                    height: 1,
                    color: Colors.grey.shade300,
                  ),
                  SizedBox(height: 15,),
                  customcheck(t: "Promo Code", d: "Pick Discount"),
                  SizedBox(height: 15,),
                       Divider(
                    thickness: 1,
                    height: 1,
                    color: Colors.grey.shade300,
                  ),
                  SizedBox(height: 15,),
                  customcheck(t: "Total Cost", d: "\$16.98"),
                    SizedBox(height: 15,),
                       Divider(
                    thickness: 1,
                    height: 1,
                    color: Colors.grey.shade300,
                  ),
                  SizedBox(height: 15,),
               Text.rich(
  TextSpan(
    style: TextStyle(
      fontSize: 18,
      color: Colors.grey.shade600,
      height: 1.4,
    ),
    children: const [
      TextSpan(
        text: 'By placing an order you agree to our\n',
      ),
      TextSpan(
        text: 'Terms ',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
        TextSpan(
        text: 'and ',
      ),
        TextSpan(
        text: 'Conditions ',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      
    ],
  ),
),
      SizedBox(height: 25,),

           MainButton(onPressed: (){
            pushReplacement(context,Final());
           }, text: "Place Order")     ],
              ),
            ),
          );
         });

           }, text: "Go To Checkout"),
           Positioned(
            right: 15,
            bottom: 10,
             child: Container(
              alignment: Alignment.center,
              width: 75,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.green[600],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text("\$16,98",style: TextStyle(color: Colors.white,fontSize: 20,
              fontWeight: FontWeight.w600,
                       ),),
             ),
           )
         ],
       ),
     
    
     ),
    );
  }
}
