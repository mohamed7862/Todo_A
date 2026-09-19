import 'package:first_app_in_iti/Core/style/colormangment.dart';
import 'package:first_app_in_iti/Core/style/customfontweghit.dart';
import 'package:first_app_in_iti/Core/utilis/units.dart';
import 'package:flutter/material.dart';

class CutomeMainBtn extends StatelessWidget {
  final VoidCallback onPressed;
  final String btnTitle;
  final Widget? customeContent;
  final Color? btncolor;
  final double? height;
  final double? width;
  final double? fontSize;
  final Color? textColor;

  const CutomeMainBtn({
    super.key,
    required this.onPressed,
    required this.btnTitle,
    this.btncolor,
    this.customeContent,
    this.height,
    this.width,
    this.fontSize,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Units.getWidth(context: context, value: width ?? 327),
      height: Units.getHeight(context: context, value: height ?? 56),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: btncolor ?? ColorManager.BrandButton,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              Units.radius(context: context, value: 12),
            ),
          ),
        ),
        child:
            customeContent ??
            Text(
              btnTitle,
              style: TextStyle(
                color: textColor ?? ColorManager.NeutralWhite,
                fontSize: Units.fontSize(
                  context: context,
                  value: fontSize ?? 18,
                ),
                fontWeight: CustomeFontWeight.medium,
              ),
            ),
      ),
    );
  }
}
