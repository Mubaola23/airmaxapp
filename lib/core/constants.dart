import 'package:flutter/material.dart';

/// App Colors
const kPrimaryColor = Colors.black;

const kSecondaryColor = Colors.white;

const kLabelColor = Colors.black54;

const kYellowColor = Color(0xFFF9D850);

const kRedColor = Color(0xFFFF6D65);

const kBlueColor = Color(0xFFFF6D63FF);

const kBlackColor = Color(0xFFF0E0F13);

const kTextFieldFillColor = Color(0xFFF80E5E5E5);

/// App TextStyles
const kHeadingTextStyle = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.w700,
  color: kPrimaryColor,
);

const kSubtitleTextStyle = TextStyle(
  color: kPrimaryColor,
  fontSize: 14,
  fontWeight: FontWeight.w500,
);

const kCaptionTextStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w700,
  fontSize: 16,
);

/// Vertical Spacings

const kExtraSmallVerticalSpacing = SizedBox(height: 8);

const kSmallVerticalSpacing = SizedBox(height: 16);

const kMediumVerticalSpacing = SizedBox(height: 24);

const kLargeVerticalSpacing = SizedBox(height: 32);

const kExtraLargeVerticalSpacing = SizedBox(height: 80);

const kOnboardingVerticalSpacing = SizedBox(height: 128);

/// Horizontal Spacings
const kTinyHorizontalSpacing = SizedBox(width: 4.0);

const kExtraSmallHorizontalSpacing = SizedBox(width: 8);

const kSmallHorizontalSpacing = SizedBox(width: 16);

const kMediumHorizontalSpacing = SizedBox(width: 24);

const kLargeHorizontalSpacing = SizedBox(width: 32);

/// Progress Indicator
const kCircularProgressIndicator = SizedBox(
  width: 30.0,
  height: 30.0,
  child: CircularProgressIndicator(
    valueColor: AlwaysStoppedAnimation<Color>(kPrimaryColor),
  ),
);

/// Large Border Radius
const kLargeTopRoundBorderRadius = BorderRadius.only(
  topLeft: const Radius.circular(32.0),
  topRight: const Radius.circular(32.0),
);
