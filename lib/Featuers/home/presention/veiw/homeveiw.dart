import 'package:first_app_in_iti/Core/share/CustomNavigationBar.dart';
import 'package:first_app_in_iti/Core/share/Function/ShowTaskSheet.dart';
import 'package:first_app_in_iti/Core/share/customappbar.dart';
import 'package:first_app_in_iti/Core/style/assetsmanger.dart';
import 'package:first_app_in_iti/Core/style/colormangment.dart';
import 'package:first_app_in_iti/Core/utilis/constant.dart';
import 'package:first_app_in_iti/Core/utilis/units.dart';
import 'package:first_app_in_iti/Featuers/home/presention/veiw/tabes/calendertab.dart';
import 'package:first_app_in_iti/Featuers/home/presention/veiw/tabes/historytab.dart';
import 'package:first_app_in_iti/Featuers/home/presention/veiw/tabes/hometab.dart';
import 'package:first_app_in_iti/Featuers/home/presention/veiw/tabes/profiletab.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late PageController _pageController;
  int selectedIndex = 0;
  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Constans.getAppBarSize(context),
        child: CustomeAppBar(),
      ),
      body: PageView(
        onPageChanged: (index) => {
          setState(() {
            selectedIndex = index;
          }),
        },
        controller: _pageController,
        children: _buildBody(),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorManager.BrandButton,
        shape: CircleBorder(),
        isExtended: true,
        elevation: Units.getWidth(context: context, value: 5),
        child: Image.asset(AssetsManager.AddIcon),
        onPressed: () async {
          await ShowTaskSheet(context);
        },
      ),
      bottomNavigationBar: CustomNavigationBar(
        selectedIndex: selectedIndex,
        onItemSelected: (index) {
          setState(() {
            selectedIndex = index;
            _pageController.animateToPage(
              selectedIndex,
              duration: Duration(milliseconds: 500),
              curve: Curves.easeIn,
            );
          });
        },
      ),
    );
  }

  List<Widget> _buildBody() => [
    HomeTab(),
    CalendarTab(),
    ProfileTab(),
    HistoryTab(),
  ];
}
