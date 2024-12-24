import 'package:appointments_app/core/theming/colors.dart';
import 'package:appointments_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField(
      {super.key,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.inputTextStyle,
      this.hintStyle,
      required this.hintText,
      this.isObscureText ,
      this.suffixIcon,
        this.fillColor,
        this.controller,
        required this.validator});

  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText ;
  final Widget? suffixIcon;
  final Color? fillColor;
  final TextEditingController? controller;
  final Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscureText??false,
      style: TextStyles.font14BlackW500,
      controller:controller,
      validator: (value) {
        return validator(value);
      },
      decoration: InputDecoration(
        isDense: true,
        hintStyle:hintStyle?? TextStyles.font14LightGrayW500,
        hintText: hintText,
        suffixIcon:suffixIcon,
        focusColor: ColorsManager.mainBlue,
        enabled: true,
        contentPadding:contentPadding?? EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 20.h,
        ),
        focusedBorder:focusedBorder?? OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsManager.mainBlue,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        enabledBorder:enabledBorder?? OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsManager.lightGrey,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
         filled: true,
        fillColor:fillColor?? ColorsManager.moreLighterGrey,
      ),
    );
  }
}
