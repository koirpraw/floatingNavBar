import 'package:flutter/material.dart';
import 'package:helapy_ios/Utils/constants.dart';
import 'package:helapy_ios/components/socal_card.dart';

import '../../../size_config.dart';
import 'sign_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign in with your email and password  \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don???t have an account? ",
                  style: TextStyle(fontSize: getProportionateScreenWidth(16)),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(16),
                        color: kPrimaryColor),
                  ),
                ),
              ],

            )],
            ),
          ),
        ),
      ),
    );
  }
}
