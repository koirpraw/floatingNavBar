import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helapy_ios/Screens/onBoarding/onBoardingPages.dart';
import 'package:helapy_ios/Theme_Helapy_Ios.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 400,
            width: 400,
            child: Center(child: Text('MorePage')),
          ),
          SizedBox(
            height: 40,
            width: 160,
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  elevation: MaterialStateProperty.all(3),
                ),
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>OnboardingPages()))

                //
                ,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.login_rounded,
                      color: Colors.red,
                    ),
                    Text(
                      "Log Out",
                      style: TextStyle(color: Colors.black54),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
