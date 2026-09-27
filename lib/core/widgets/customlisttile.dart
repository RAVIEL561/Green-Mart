import 'package:app_3/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class customlisttile extends StatelessWidget {
  const customlisttile({
    super.key, required this.name, required this.price, required this.asset, required this.qn,
  });
final String name;
final String price;
final String asset;
final String qn;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        width: 70,
        height: 60,
        fit: BoxFit.cover,
        asset,
      ),
      title: Text(
        name,
        style: TextStyle(
          color: AppColors.blackColor,
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
      ),
      subtitle: Text(
        qn,
        style: TextStyle(
          color: AppColors.garyColor,
          fontSize: 18,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            price,
            style: TextStyle(
              color: AppColors.blackColor,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(width: 8),
          const Icon(
            Icons.arrow_forward_ios,
            size: 24,
            color: AppColors.blackColor,
          ),
        ],
      ),
    );
  }
}