import 'package:first_app_in_iti/Core/style/colormangment.dart';
import 'package:first_app_in_iti/Core/style/textstylemanger.dart';
import 'package:first_app_in_iti/Core/utilis/units.dart';
import 'package:flutter/material.dart';

class Custome_tab extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const Custome_tab({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                image,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) => Image.asset(
                  'assets/images/logo.png',
                  width: 180,
                  height: 180,
                  fit: BoxFit.contain,
                ),
              ),

              Container(
                height: Units.getHeight(context: context, value: 40),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      ColorManager.NeutralWhite,
                      ColorManager.NeutralWhite,
                      ColorManager.NeutralWhite.withAlpha(20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: Units.getHeight(context: context, value: 12)),

        Text(
          title,
          style: TextStyleManager.textStyleNeutralPrimarySB26(context),
          textAlign: TextAlign.center,
        ),

        SizedBox(height: Units.getHeight(context: context, value: 8)),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            description,
            style: TextStyleManager.textStyleNeutralSecondaryR14(context),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
