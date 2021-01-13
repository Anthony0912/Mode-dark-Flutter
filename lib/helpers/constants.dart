import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const kSpacingUnit = 10;

const darkPrimaryColor = Color(0xFF212121);
const darkSecondaryColor = Color(0xFF373737);
const lightPrimaryColor = Color(0xFFFFFFFF);
const lightSecondaryColor = Color(0xFFF3F7FB);
const accentColor = Color(0xFFFFC107);

final titleTextStyle = TextStyle(
  fontSize: ScreenUtil().setSp(kSpacingUnit.w * 1.7),
  fontWeight: FontWeight.w600,
);

final captionTextStyle = TextStyle(
  fontSize: ScreenUtil().setSp(kSpacingUnit.w * 1.3),
  fontWeight: FontWeight.w100,
);

final buttonTextStyle = TextStyle(
  fontSize: ScreenUtil().setSp(kSpacingUnit.w * 1.5),
  fontWeight: FontWeight.w400,
  color: darkPrimaryColor,
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: darkPrimaryColor,
  canvasColor: darkPrimaryColor,
  backgroundColor: darkSecondaryColor,
  accentColor: accentColor,
  iconTheme: ThemeData.dark().iconTheme.copyWith(
        color: lightSecondaryColor,
      ),
  textTheme: ThemeData.dark().textTheme.apply(
        bodyColor: lightSecondaryColor,
        displayColor: lightSecondaryColor,
      ),
);

final lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: lightPrimaryColor,
  canvasColor: lightPrimaryColor,
  backgroundColor: lightSecondaryColor,
  accentColor: accentColor,
  iconTheme: ThemeData.light().iconTheme.copyWith(
        color: darkSecondaryColor,
      ),
  textTheme: ThemeData.light().textTheme.apply(
        bodyColor: darkSecondaryColor,
        displayColor: darkSecondaryColor,
      ),
);
