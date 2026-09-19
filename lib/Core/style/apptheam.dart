import 'package:first_app_in_iti/Core/style/colormangment.dart';
import 'package:flutter/material.dart';

class Apptheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: ColorManager.NeutralWhite,
    dividerColor: ColorManager.NeutralLine,
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: ColorManager.NeutralWhite,
    ),
    datePickerTheme: DatePickerThemeData(
      dayBackgroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return ColorManager.BrandPrimaryDefault;
        }
        return ColorManager.NeutralWhite;
      }),
      todayBackgroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return ColorManager.BrandPrimaryDefault;
        }
        return ColorManager.NeutralWhite;
      }),
      todayBorder: BorderSide(color: ColorManager.BrandPrimaryDefault),
      todayForegroundColor: .resolveWith((states) {
        if (!states.contains(WidgetState.selected)) {
          return ColorManager.BrandPrimaryDefault;
        }
        return ColorManager.NeutralPrimary;
      }),
    ),
  );
}
