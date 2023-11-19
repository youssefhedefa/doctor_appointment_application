import 'package:doctor_appointment_application/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStylesProvider{

  static TextStyle onBoardingBlueSize32Bold = TextStyle(
    color: ColorsProvider.mainBlue,
    fontWeight: FontWeight.bold,
    fontSize: 32.sp,
  );

  static TextStyle descriptionGreyText = TextStyle(
    color: ColorsProvider.mainTextGrey,
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
  );

}