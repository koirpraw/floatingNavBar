import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:helapy_ios/Screens/Home/HomePage.dart';
import 'package:helapy_ios/Screens/InsightsPage/InsightsPage.dart';
import 'package:helapy_ios/Screens/MorePage/MorePage.dart';
import 'package:helapy_ios/Screens/VisualData/VisualData.dart';
import '../Theme_Helapy_Ios.dart';
import 'package:helapy_ios/provider/theme_provider.dart';
import 'package:flutter_icons/flutter_icons.dart';

class NavBarPage extends StatefulWidget {
  NavBarPage({ required this.initialPage});

  final String initialPage;
  static String routeName = "/NavBarPage";

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.

class _NavBarPageState extends State<NavBarPage> {
  String _currentPage = 'Homepage';
  final int _currentIndex = 0;


  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage ?? _currentPage;
    // _currentPage = widget.initialPage ?? _currentPage;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'Homepage': HomePage(),
      'InsightsPage': InsightsPage(),
      'VisualData': VisualDataPage(),
      'MorePage': MorePage(),
    };
    return Scaffold(
      body: tabs[_currentPage],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.18),
                blurRadius: 30,
                spreadRadius: 8,
                offset: Offset(0, 3),


              )
            ]
          ),
          child: CustomNavigationBar(
                  iconSize: 24.0,
          selectedColor: Theme.of(context).colorScheme.secondary,
          strokeColor: Theme.of(context).colorScheme.secondary,
          unSelectedColor: Theme.of(context).focusColor,
          backgroundColor: Theme.of(context).primaryColor,
          borderRadius: Radius.circular(20.0),
            elevation: 0,


            items: [
              CustomNavigationBarItem(icon: Icon(AntDesign.home)),
              CustomNavigationBarItem(icon: Icon(AntDesign.barchart)),
              CustomNavigationBarItem(icon: Icon(AntDesign.cloudo)),
              CustomNavigationBarItem(icon: Icon(AntDesign.user))
            ],
            currentIndex: tabs.keys.toList().indexOf(_currentPage),

            onTap: (i) => setState(() => _currentPage = tabs.keys.toList()[i]),

            isFloating: true,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
        onPressed: (){},
        child: Icon(Icons.add_rounded,size: 36,color: Theme.of(context).primaryColor,),),
    );
  }
}

