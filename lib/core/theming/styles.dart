import 'package:appointments_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles{
  static TextStyle font24BlackWeight = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w700,
    fontSize: 24.sp,
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

  static TextStyle font16WhiteSemiBold= TextStyle(
    color:Colors.white,
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
  );
}