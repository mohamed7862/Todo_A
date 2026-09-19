import 'package:first_app_in_iti/Core/style/assetsmanger.dart';
import 'package:first_app_in_iti/Core/style/colormangment.dart';
import 'package:first_app_in_iti/Core/style/textstylemanger.dart';
import 'package:first_app_in_iti/Core/utilis/units.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void showFailDialog({
  required BuildContext context,
  required String failMessage,
}) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => Center(
      child: Container(
        decoration: BoxDecoration(
          color: ColorManager.NeutralBackground,
          borderRadius: .circular(Units.radius(context: context, value: 20)),
        ),
        padding: .all(10),
        margin: .symmetric(
          horizontal: Units.getHeight(context: context, value: 20),
        ),
        child: Column(
          mainAxisSize: .min,
          children: [
            Container(alignment: .topEnd, child: CloseButton()),
            Lottie.asset(
              AssetsManager.FailIcon,
              width: Units.getWidth(context: context, value: 160),
              height: Units.getHeight(context: context, value: 160),
            ),
            Text(
              failMessage,
              style: TextStyleManager.textStyleNeutralPrimarySB16(context),
            ),
          ],
        ),
      ),
    ),
  );
}
