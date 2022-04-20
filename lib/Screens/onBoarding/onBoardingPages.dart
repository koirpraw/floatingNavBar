import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:helapy_ios/Screens/Home/HomePage.dart';
import 'package:helapy_ios/Screens/sign_in/sign_in_screen.dart';
import 'package:helapy_ios/Theme_Helapy_Ios.dart';
import 'package:helapy_ios/Utils/constants.dart';
import 'package:helapy_ios/components/NavBar.dart';
import 'package:lottie/lottie.dart';

import 'package:helapy_ios/Screens/onBoarding/Components/OnBoardingPageContainer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../main.dart';

class OnboardingPages extends StatefulWidget {


  @override
  _OnboardingPagesState createState() => _OnboardingPagesState();
}

class _OnboardingPagesState extends State<OnboardingPages> {
  PageController? pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: kBackgroundColor,
        body: SafeArea(
            child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  child: Stack(
                    children: [
                      PageView(
                        controller: pageViewController ??=
                            PageController(initialPage: 0),
                        scrollDirection: Axis.horizontal,
                        children: [
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Relax...", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 30),),
                                Container(
                                  height:
                                  MediaQuery.of(context).size.height * 0.6,
                                  width:
                                  MediaQuery.of(context).size.width * 0.8,
                                  child: Lottie.asset(
                                    'assets/lottiefiles/meditating-monkey.json',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Text("U made it .",style: TextStyle(fontSize: 16),),
                                Text("Now Let us take care of you",style: TextStyle(fontSize: 16),),
                              ]),
                          OnBoardingPageConatiner(
                            headerText: Text(
                              "Description Text 1",
                              style: kTitle,
                              textAlign: TextAlign.center,
                            ),
                            networkImage: Image.network(
                              'https://picsum.photos/seed/673/600',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          OnBoardingPageConatiner(
                            headerText: Text(
                              "Description Text 2",
                              style: kTitle,
                              textAlign: TextAlign.center,
                            ),
                            networkImage: Image.network(
                              'https://picsum.photos/seed/445/600',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          OnBoardingPageConatiner(
                            headerText: Text(
                              "Description Text 3",
                              style: kTitle,
                              textAlign: TextAlign.center,
                            ),
                            networkImage: Image.network(
                              'https://picsum.photos/seed/821/600',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Sign up today.",
                                style: kHeadlineText,
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.44,
                                height: 150,
                                child: Image.asset("assets/HelapyAppIcon.png"),
                              ),
                              SizedBox(
                                height: 100,
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(12.0),
                                    backgroundColor: MaterialStateProperty.all(
                                        Theme.of(context)
                                            .colorScheme
                                            .secondary),
                                    fixedSize: MaterialStateProperty.all(
                                        Size(240, 50)),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(24.0)))),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              NavBarPage(initialPage: 'HomePage')));
                                },
                                child: Text(
                                  "LETS GO !",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      //This is the animated slide indicator at the bottom
                      Align(
                        alignment: AlignmentDirectional(0, .9),
                        child: SmoothPageIndicator(
                          controller: pageViewController ??=
                              PageController(initialPage: 0),
                          count: 5,
                          axisDirection: Axis.horizontal,
                          onDotClicked: (i) {
                            pageViewController?.animateToPage(
                              i,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                          },
                          effect: ExpandingDotsEffect(
                            expansionFactor: 2,
                            spacing: 8,
                            radius: 16,
                            dotWidth: 16,
                            dotHeight: 16,
                            dotColor: Color(0xFF9697A1),
                            activeDotColor: Color(0xFFAF7AEF),
                            paintStyle: PaintingStyle.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}

//            SizedBox(
//               height: 100,
//             ),
//             Center(
//                 child: Text(
//                   "Helapy ",
//                   style: HelapyIosTheme.title1,
//                 )),
//             SizedBox(
//               height: 30,
//             ),

// OnBoardingPageConatiner(
// headerText: Text(
// "This is Lottie",
// style: kTitle,
// textAlign: TextAlign.center,
// ),
// lottieStuff: Lottie.asset(
//
// "assets/lottiefiles/meditating-monkey.json),",width: 100,height: 100),
//----LottiePage----
// Column(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: [
//     Text(
//       "Lottie Dottie",
//       style: kHeadlineText,
//     ),
//     SizedBox(
//       height: 40,
//     ),
//     Container(
//       width: MediaQuery
//           .of(context)
//           .size
//           .width * 0.44,
//       height: MediaQuery
//           .of(context)
//           .size
//           .width * 0.44,
//       child: Lottie.,
//     ),
//     SizedBox(
//       height: 100,
//     ), Text(
//       "Lottie Dottie",
//       style: kHeadlineText,
//     ),
//
//   ],
// ),
// ),
