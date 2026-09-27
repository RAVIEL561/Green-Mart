import 'package:app_3/core/functions/Navigations.dart';
import 'package:app_3/core/utils/app_colors.dart';
import 'package:app_3/data/productmodel.dart';
import 'package:flutter/material.dart';
import 'package:app_3/data/dummydata.dart';
import 'package:flutter_svg/svg.dart';
import 'package:app_3/feature/cart/cart.dart';
class customproduct extends StatelessWidget {
  const customproduct({
    super.key, required this.product,
  });

  final List<Productmodel> product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final currentproduct = product[index];
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
            width: 185,
            decoration: BoxDecoration(
              border: Border.all(color: const Color.fromARGB(255, 168, 169, 173)),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Center(
                  child: Image.network(currentproduct.img),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  currentproduct.title,
                  style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  currentproduct.unit,
                  style: TextStyle(
                    color: AppColors.garyColor,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      currentproduct.price,
                      style: TextStyle(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                      },
                      child: Container(
                        width: 38,
                        height: 38,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.add,
                          size: 22,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 10);
        },
        itemCount: product.length,
      ),
    );
  }
}