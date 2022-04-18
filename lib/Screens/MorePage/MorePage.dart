import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helapy_ios/Screens/onBoarding/onBoardingPages.dart';
import 'package:helapy_ios/Theme_Helapy_Ios.dart';
import 'package:helapy_ios/components/ChangeTheme_sliderButton.dart';

class MorePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            child: Center(child: Text('MorePage')),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 60,
                child: Card(
                    elevation: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Change Theme:"),
                        ChangeThemeButtonWidget(),
                      ],
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 64,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width *0.4,
                height: 40,
                child: OutlinedButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.green),
                      // elevation: MaterialStateProperty.all(3),
                    ),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OnboardingPages()))

                    //
                    ,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.login_rounded,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Log Out",style: TextStyle(color: Theme.of(context).colorScheme.secondary),
                        )
                      ],
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
