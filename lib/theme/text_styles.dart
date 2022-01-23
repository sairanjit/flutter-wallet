// Text Style setup
import 'package:flutter/material.dart';

import 'constants.dart';

const textTheme = TextTheme(
  headline1: headingText1Style,
  headline2: headingText2Style,
  headline3: headingText3Style,
  bodyText1: bodyText1Style,
  bodyText2: bodyText2Style,
  subtitle1: subTitleText1Style,
  subtitle2: subTitleText2Style,
);

const headingText1Style = TextStyle(
  fontSize: 36.0,
  fontWeight: FontWeight.w700,
  color: primaryColor,
  // height: 45.0,
);

const headingText2Style = TextStyle(
  fontSize: 32.0,
  fontWeight: FontWeight.w600,
  color: secondaryColor,
  // height: 32.0,
);

const headingText3Style = TextStyle(
  fontSize: 26.0,
  fontWeight: FontWeight.w600,
  color: labelColor,
  // height: 32.0,
);

const bodyText1Style = TextStyle(
  fontSize: 19.0,
  fontWeight: FontWeight.w400,
  color: bodyText1Color,
  // height: 24.0,
);

const bodyText2Style = TextStyle(
  fontSize: 15.0,
  fontWeight: FontWeight.w400,
  color: bodyText2Color,
  // height: 24.0,
);

const subTitleText1Style = TextStyle(
  fontSize: 15.0,
  fontWeight: FontWeight.w600,
  color: primaryColor,
  // height: 24.0,
);

const subTitleText2Style = TextStyle(
  fontSize: 13.0,
  fontWeight: FontWeight.w400,
  color: bodyText2Color,
  // height: 24.0,
);
