import 'package:flutter/material.dart';

void pushTo(BuildContext Context,Widget newScreen)
{
        Navigator.push(Context,MaterialPageRoute(builder: (context) =>newScreen));

}
void pushReplacement(BuildContext Context,Widget newScreen)
{
        Navigator.push(Context,MaterialPageRoute(builder: (context) =>newScreen));
}
