//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:custom_navigation_bar/custom_navigation_bar.dart';
// import 'package:flutter_icons/flutter_icons.dart';
//
//
//
// class CustomNavBar extends StatefulWidget {
//   const CustomNavBar({Key? key}) : super(key: key);
//
//   @override
//   _CustomNavBarState createState() => _CustomNavBarState();
// }
//
// class _CustomNavBarState extends State<CustomNavBar> {
//   var _currentIndex;
//
//   @override
//   Widget build(BuildContext context) {
//     return CustomNavigationBar(
//       iconSize: 30.0,
//       selectedColor: Color(0xff0c18fb),
//       strokeColor: Color(0x300c18fb),
//       unSelectedColor: Colors.grey[600],
//       backgroundColor: Colors.white,
//       borderRadius: Radius.circular(20.0),
//       items: [
//         CustomNavigationBarItem(
//           icon: Icon(
//             AntDesign.home,
//           ),
//         ),
//         CustomNavigationBarItem(
//           icon: Icon(
//             AntDesign.shoppingcart,
//           ),
//         ),
//         CustomNavigationBarItem(
//           icon: Icon(
//             AntDesign.cloudo,
//           ),
//         ),
//         CustomNavigationBarItem(
//           icon: Icon(
//               AntDesign.search1
//           ),
//         ),
//         CustomNavigationBarItem(
//           icon: const Icon(
//             AntDesign.user,
//           ),
//         ),
//       ],
//       currentIndex: _currentIndex,
//       onTap: (index) {
//         setState(() {
//           _currentIndex = index;
//         });
//       },
//       isFloating: true,
//     );
//   }
//   }
//
//
