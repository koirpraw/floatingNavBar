import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: avoid_classes_with_only_static_members
class HelapyIosTheme {
  static const Color primaryColor = Color(0xFF8783F0);
  static const Color secondaryColor = Color(0xFFAF7AEF);
  static const Color tertiaryColor = Color(0xFFFFFFFF);

  static const Color accent = Color(0xFFF6875E);
  static const Color highEmphasis = Color(0xFF2E3044);
  static const Color mediumEmphasis = Color(0xFF9697A1);
  static const Color lowEmphasis = Color(0xFFD5D5D9);
  static const Color backgroundColor = Color(0xFFF5F5F5);
  static const Color alert = Color(0xFFFF4646);
  static const Color warning = Color(0xFFFFB950);
  static const Color success = Color(0xFF329D3D);
  static const Color information = Color(0xFF368DF9);
  static const Color bright = Color(0xFFFFFFFF);
  static const Color primaryDark = Color(0xFF6D68E9);
  static const Color primaryLight = Color(0xFFB9B6FA);
  static const Color secondaryDark = Color(0xFF9D5EE8);
  static const Color secondaryLight = Color(0xFF944F6F);

  String primaryFontFamily = 'Poppins';
  String secondaryFontFamily = 'Roboto';

  static TextStyle get headline3 => GoogleFonts.getFont(
    'Lato',
    color: primaryDark,
    fontWeight: FontWeight.w600,
    fontSize: 32,
  );
  static TextStyle get title1 => GoogleFonts.getFont(
        'Lato',
        color: highEmphasis,
        fontWeight: FontWeight.w600,
        fontSize: 24,
      );
  static TextStyle get title2 => GoogleFonts.getFont(
        'Lato',
        color: highEmphasis,
        fontWeight: FontWeight.w500,
        fontSize: 22,
      );
  static TextStyle get title3 => GoogleFonts.getFont(
        'Lato',
        color: highEmphasis,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      );
  static TextStyle get subtitle1 => GoogleFonts.getFont(
        'Lato',
        color: lowEmphasis,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      );
  static TextStyle get subtitle2 => GoogleFonts.getFont(
        'Lato',
        color: mediumEmphasis,
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
  static TextStyle get bodyText1 => GoogleFonts.getFont(
        'Lato',
        color: highEmphasis,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
  static TextStyle get bodyText2 => GoogleFonts.getFont(
        'Lato',
        color: mediumEmphasis,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    required String fontFamily,
    required Color color,
    required double fontSize,
    required FontWeight fontWeight,
    required FontStyle fontStyle,
    bool useGoogleFonts = true,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
            );
}
