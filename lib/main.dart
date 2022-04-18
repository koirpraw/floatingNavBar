import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// import 'package:custom_navigation_bar/custom_navigation_bar.dart';
// import 'package:flutter_icons/flutter_icons.dart';
// import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:helapy_ios/Screens/InsightsPage/InsightsPage.dart';
import 'package:helapy_ios/Screens/MorePage/MorePage.dart';
import 'package:helapy_ios/Screens/VisualData/VisualData.dart';
import 'package:helapy_ios/Screens/onBoarding/onBoardingPages.dart';
import 'package:helapy_ios/Theme_Helapy_Ios.dart';
import 'package:helapy_ios/provider/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

// Future <void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   SystemChrome.setPreferredOrientations(
//       [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
//   runApp(const MyApp());
// }
 void main(){
   runApp(MyApp());
 }

class MyApp extends StatelessWidget {
  static const String title = "Helapy";
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
    builder: (context, _)  {
      final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      themeMode: themeProvider.themeMode,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      home: OnboardingPages(),
    );
  }
  );
}
