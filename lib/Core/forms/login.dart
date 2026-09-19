import 'package:first_app_in_iti/Core/nanigation/route.dart';
import 'package:first_app_in_iti/Core/share/custommainbutton.dart';
import 'package:first_app_in_iti/Core/share/textinputefield.dart';
import 'package:first_app_in_iti/Core/style/textstylemanger.dart';
import 'package:first_app_in_iti/Core/utilis/units.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Units.getWidth(context: context, value: 24),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: Units.getHeight(context: context, value: 40)),

              Center(
                child: Text(
                  'Welcome Back!',
                  style: TextStyleManager.textStyleNeutralPrimarySB24(context),
                ),
              ),
              SizedBox(height: Units.getHeight(context: context, value: 8)),
              Center(
                child: Text(
                  'Your work faster and structured with Taskflow',
                  style: TextStyleManager.textStyleNeutralSecondaryR14(context),
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(height: Units.getHeight(context: context, value: 48)),

              TextInputField(
                title: 'Email Address',
                hintText: 'name@example.com',
              ),

              SizedBox(height: Units.getHeight(context: context, value: 24)),

              TextInputField(
                title: 'Password',
                hintText: '••••••••••••••••',
                isPassword: true,
              ),

              const Spacer(),

              CutomeMainBtn(
                onPressed: () {
                  context.pushReplacement(route.kHome);
                },
                btnTitle: 'Continue',
              ),
              SizedBox(height: Units.getHeight(context: context, value: 16)),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text.rich(
                    TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyleManager.textStyleNeutralSecondaryR14(
                        context,
                      ),
                      children: [
                        TextSpan(
                          text: 'Sign up',
                          style:
                              TextStyleManager.textStyleBrandPrimaryDefaultB14(
                                context,
                              ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              context.go(route.kRegister);
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: Units.getHeight(context: context, value: 24)),
            ],
          ),
        ),
      ),
    );
  }
}
