import 'package:flutter/material.dart';
import 'package:app_3/core/widgets/customculomn.dart';
import 'package:app_3/core/widgets/main_button.dart';
import 'package:app_3/core/utils/app_colors.dart';
class customkeypad extends StatelessWidget {
  const customkeypad({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFD1D5DB),
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      "1",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
             Expanded(child: 
             customculomn(num: "2", alpha: "A B C")),
             Expanded(child: customculomn(num: "3", alpha:"D E F")),
            ],
          ),
          Row(
            children: [
              Expanded(child: customculomn(num: "4", alpha: "G H I")),
              Expanded(child: customculomn(num: "5", alpha: "J K L")),
              Expanded(child: customculomn(num: "6", alpha: "M N O")),
            ],
          ),
          Row(
            children: [
            Expanded(child: customculomn(num: "7", alpha: "P Q R S")),
            Expanded(child: customculomn(num: "8", alpha: "T U V ")),
            Expanded(child: customculomn(num: "9", alpha: "W X Y Z")),
            ],
          ),
           Row(
      children: [
        const Expanded(
          child: Center(
            child: Text(
    "+*#",
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(4),
            height: 48,
            decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
    child: Text(
      "0",
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: Icon(
    Icons.backspace_outlined,
    size: 24,
    color: AppColors.blackColor,
            ),
          ),
        ),
      ],
    ),
          
        ],
      ),
    );
  }
}

