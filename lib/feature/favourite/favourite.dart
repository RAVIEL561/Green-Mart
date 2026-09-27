import 'package:app_3/core/widgets/customlisttile.dart';
import 'package:flutter/material.dart';
import 'package:app_3/core/utils/app_colors.dart';
import 'package:app_3/core/widgets/customlisttile.dart';
import 'package:app_3/core/widgets/main_button.dart';

class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Favourite",
          style: TextStyle(
            color: AppColors.blackColor,
            fontSize: 26,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        leading: Icon(Icons.abc_outlined,color: Colors.white,),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: ListView(
          children: [
            customlisttile(asset: "https://th.bing.com/th/id/OIP.PrQnqO7zsJdmi6Y0Mry9BQHaHa?w=195&h=195&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3",
            name: "Sprite Can",
            qn: "325ml,price",
            price: "\$1.50",
            ),
            SizedBox(height: 35,),
            customlisttile(name: "Diet Coke", price:"\$1.99", asset: "https://th.bing.com/th/id/OIP.d6gzf1qxFd-dGXEPBY-DowHaL4?w=132&h=192&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3", qn: "355ml,price"),
            SizedBox(height: 35,),
           customlisttile(name: "Coca Cola ", price: "\$4.99",
            asset:"https://th.bing.com/th/id/OIP.3pHEou4yUc6KbQ2DcsSy1wHaID?w=149&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3", 
            qn: "325ml,price"),
            SizedBox(height: 35,),
           customlisttile(name: "Pepsi Can", price: "\$9.99", asset:"https://www.bing.com/th/id/OIP.lIhxVWj0c_Q46PBDSk7mOAHaHa?w=193&h=193&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=ImgAns&rm=2", qn: "330ml,price"),
           SizedBox(height: 35,),
           customlisttile(name: "Red Pull", price: "\$29,99", asset:"https://www.bing.com/th/id/OIP.XR51tvgTH68RVTwY-AzWXwHaHa?w=193&h=193&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=ImgAns&rm=2", qn:"500ml,price"),
          ],
        ),
      ),
        bottomNavigationBar: Padding(padding: EdgeInsetsGeometry.all(16),
         child: MainButton(onPressed: (){}, text: "Add To Cart"),),   
    );
  }
}
