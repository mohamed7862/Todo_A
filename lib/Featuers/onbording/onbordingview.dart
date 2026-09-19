import 'package:first_app_in_iti/Core/nanigation/route.dart';
import 'package:first_app_in_iti/Core/share/custommainbutton.dart';
import 'package:first_app_in_iti/Core/style/assetsmanger.dart';
import 'package:first_app_in_iti/Core/style/colormangment.dart';
import 'package:first_app_in_iti/Core/style/customtextghutton.dart';
import 'package:first_app_in_iti/Core/utilis/units.dart';
import 'package:first_app_in_iti/Featuers/onbording/tabes/customtab.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(
                top: Units.getHeight(context: context, value: 53),
                right: 20,
              ),
              child: CustomeTxtBtn(
                onPressed: () {
                  context.pushReplacement(route.kWelcome);
                },
                BtnTitle: 'skip',
              ),
            ),
          ),

          SizedBox(height: Units.getHeight(context: context, value: 32)),

          Expanded(
            child: PageView(
              controller: _controller,
              allowImplicitScrolling: false,
              physics: const NeverScrollableScrollPhysics(),
              children: _buildTabs(),
            ),
          ),

          SizedBox(
            height: Units.getHeight(context: context, value: 93),
            child: Center(
              child: SmoothPageIndicator(
                controller: _controller,
                count: 2,
                effect: ExpandingDotsEffect(
                  activeDotColor: ColorManager.BrandPrimaryDefault,
                  dotColor: ColorManager.dots,
                  dotHeight: Units.getHeight(context: context, value: 8),
                  dotWidth: Units.getWidth(context: context, value: 8),
                ),
              ),
            ),
          ),

          Center(
            child: CutomeMainBtn(
              width: 327,
              height: 56,
              onPressed: () {
                Next_page();
              },
              btnTitle: 'Continue',
            ),
          ),

          SizedBox(height: Units.getHeight(context: context, value: 16)),
        ],
      ),
    );
  }

  void Next_page() {
    final int currentPage = _controller.page?.round() ?? 0;

    if (currentPage == 1) {
      context.pushReplacement(route.kWelcome);
    } else {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Easing.linear,
      );
    }
  }

  List<Widget> _buildTabs() {
    return [
      Custome_tab(
        image: AssetsManager.Onboarding_1,
        title: 'Your convenience in \nmaking a todo list',
        description:
            'Here\'s a mobile platform that helps you create task '
            '\nor to list so that it can help you in every job '
            '\neasier and faster.',
      ),
      Custome_tab(
        image: AssetsManager.Onboarding_2,
        title: 'Find the practicality in \nmaking your todo list',
        description:
            'Easy-to-understand user interface that makes you '
            '\nmore comfortable when you want to create a task or '
            '\nto do list, TaskFlow can also improve productivity',
      ),
    ];
  }
}
