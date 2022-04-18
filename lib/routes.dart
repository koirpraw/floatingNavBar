import 'package:flutter/widgets.dart';
import 'package:helapy_ios/Screens/Home/HomePage.dart';

import 'Screens/sign_in/sign_in_screen.dart';
import 'components/NavBar.dart';

final Map<String, WidgetBuilder> routes = {
  SignInScreen.routeName: (context) => SignInScreen(),
  HomePage.routeName: (context) => HomePage(),
  NavBarPage.routeName:(context) => NavBarPage(),
};