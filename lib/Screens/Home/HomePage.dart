import 'package:flutter/material.dart';
import 'package:helapy_ios/components/ChangeTheme_sliderButton.dart';
import 'package:helapy_ios/main.dart';

class HomePage extends StatefulWidget {
  static String routeName = "/home";



  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Theme.of(context).colorScheme.secondary,
        //   title: Text(MyApp.title,),
        //   automaticallyImplyLeading: false,
        //   // actions: [
        //   //   Row(
        //   //     mainAxisAlignment: MainAxisAlignment.center,
        //   //     children: const [
        //   //       ChangeThemeButtonWidget(
        //   //       ),
        //   //     ],
        //   //   )
        //   // ],
        // ),
        body: Center(child: Text("This is HomePage")));
  }
}
