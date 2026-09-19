import 'package:first_app_in_iti/Core/utilis/units.dart';
import 'package:flutter/material.dart';

class Constans {
  static Size getAppBarSize(BuildContext context) {
    return Size(.infinity, Units.getHeight(context: context, value: 130));
  }

  static const FirebaseTaskCollection = 'Tasks';
}
