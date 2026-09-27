import 'package:flutter/material.dart';
import 'package:app_3/core/utils/app_colors.dart';
import 'package:app_3/core/widgets/customform.dart';
import 'package:app_3/data/exploredummydata.dart';
import 'package:app_3/data/categoryitem.dart';
import 'package:app_3/feature/CategoryCard/CategoryCard.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Find Product",style: TextStyle(color: AppColors.blackColor,fontSize: 28,fontWeight: FontWeight.w700),),
        centerTitle: true,
        leading: Icon(Icons.abc_outlined,color: Colors.white,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Column(
            children: [
              customField(hintText: "Search Store"),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
  itemCount: categories.length,
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    mainAxisExtent: 200,
    mainAxisSpacing: 16,
    childAspectRatio: .8,
  ),
  itemBuilder: (context, index) {
    return CategoryCard(
     categoryItem: categories[index],
    );
  },
),
            ],
          )
        ),
      ),
    );
  }
}