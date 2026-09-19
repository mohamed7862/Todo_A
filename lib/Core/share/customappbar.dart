import 'package:first_app_in_iti/Core/style/assetsmanger.dart';
import 'package:first_app_in_iti/Core/style/textstylemanger.dart';
import 'package:first_app_in_iti/Core/utilis/units.dart';
import 'package:flutter/material.dart';

class CustomeAppBar extends StatefulWidget {
  const CustomeAppBar({super.key});

  @override
  State<CustomeAppBar> createState() => _CustomeAppBarState();
}

class _CustomeAppBarState extends State<CustomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(
        horizontal: Units.getHeight(context: context, value: 24),
        vertical: Units.getWidth(context: context, value: 24),
      ),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                'Today',
                style: TextStyleManager.textStyleNeutralPrimarySB24(context),
              ),
              Text(
                'Best platform for creating to-do lists',
                style: TextStyleManager.textStyleNeutralSecondaryR14(context),
              ),
            ],
          ),
          Image.asset(AssetsManager.Setting),
        ],
      ),
    );
  }
}
