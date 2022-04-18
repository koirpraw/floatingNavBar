import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

class OnBoardingPageConatiner extends StatelessWidget {
  const OnBoardingPageConatiner({
    this.headerText,
    this.networkImage,
  });

  final Text headerText;
  final Image networkImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 24,
        ),
        Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.7,
            child: networkImage),
        Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: headerText,
        ),
      ],
    );
  }
}
