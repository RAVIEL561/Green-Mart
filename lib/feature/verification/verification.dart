import 'package:app_3/core/functions/Navigations.dart';
import 'package:app_3/feature/login/login.dart';
import 'package:flutter/material.dart';
import 'package:app_3/core/utils/app_colors.dart';
import 'package:app_3/core/widgets/customform.dart';
import 'package:app_3/core/widgets/main_button.dart';
import 'package:app_3/core/widgets/customculomn.dart';
import 'package:app_3/feature/verificationcode/verificationcode.dart';
import 'package:app_3/core/widgets/customkeypad.dart';
import 'package:app_3/core/functions/Navigations.dart';


class Verification extends StatelessWidget {
  const Verification({super.key});

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      leading: IconButton(
        onPressed: () {
          pushTo(context, Login());
        },
        icon: const Icon(Icons.arrow_back_ios),
      ),
    ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            "Enter your mobile phone",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          const Text(
            "We want to verify you. We will send you a one time verification code",
          ),
          const SizedBox(height: 50),
          customField(hintText: "01*********"),
          const SizedBox(height: 50),
          MainButton(onPressed: () {
            pushTo(context, Verificationcode());
          }, text: "Next"),
          const SizedBox(height: 50),
          customkeypad(),
        ],
      ),
    ),
  );
}
}

