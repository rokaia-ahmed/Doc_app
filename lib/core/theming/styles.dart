import 'package:appointments_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles{
  static TextStyle font24BlackWeight = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w700,
    fontSize: 24.sp,
  );
  static TextStyle font24BlueBold= TextStyle(
    color: ColorsManager.mainBlue,
    fontWeight: FontWeight.bold,
    fontSize: 24.sp,
  );
  static TextStyle font12BlueNormal= TextStyle(
    color: ColorsManager.mainBlue,
    fontWeight: FontWeight.normal,
    fontSize: 12.sp,
  );
  static TextStyle font11BlueW600= TextStyle(
    color: ColorsManager.mainBlue,
    fontWeight: FontWeight.w600,
    fontSize: 11.sp,
  );
  static TextStyle font32BlackWeight = TextStyle(
    color:ColorsManager.mainBlue,
    fontWeight: FontWeight.bold,
    fontSize: 32.sp,
  );
  static TextStyle font13GrayRegular= TextStyle(
    color:ColorsManager.grey,
    fontWeight: FontWeight.normal,
    fontSize: 13.sp,
  );

  static TextStyle font14GrayRegular= TextStyle(
    color:ColorsManager.grey,
    fontWeight: FontWeight.normal,
    fontSize: 14.sp,
  );
  static TextStyle font14LightGrayW500= TextStyle(
    color:ColorsManager.lightGrey,
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
  );
  static TextStyle font11BlackNormal= TextStyle(
    color:Colors.black,
    fontWeight: FontWeight.normal,
    fontSize: 11.sp,
  );
  static TextStyle font14BlackW500= TextStyle(
    color:Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
  );

  static TextStyle font16WhiteSemiBold= TextStyle(
    color:Colors.white,
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
  );
  static TextStyle font14BlueSemiBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.mainBlue,
  );

  static TextStyle font15DarkBlueMedium = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.darkBlue,
  );
}