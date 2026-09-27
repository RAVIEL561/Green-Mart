import 'package:flutter/material.dart';
import 'package:app_3/data/categoryitem.dart';
import 'package:app_3/core/utils/app_colors.dart';

class CategoryCard extends StatelessWidget {
  final Categoryitem categoryItem;

  const CategoryCard({
    super.key,
    required this.categoryItem,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: categoryItem.bgcolor,
          border: Border.all(
            color: categoryItem.bordercolor,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
              categoryItem.img,
              height: 85,
            ),
            const SizedBox(height: 10),
            Text(
              categoryItem.title,style: TextStyle(color: AppColors.blackColor,fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}