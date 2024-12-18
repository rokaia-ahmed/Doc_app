import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theming/colors.dart';
import '../theming/styles.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton(
      {super.key,
      required this.onPressed,
      required this.text,
      this.borderRadius,
      this.textStyle,
      this.height,
      this.width});
  final VoidCallback onPressed;
  final BorderRadiusGeometry? borderRadius;
  final TextStyle? textStyle;
  final double? height;
  final double? width;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(ColorsManager.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        fixedSize: WidgetStateProperty.all(
            Size(width?.w ?? double.maxFinite, height?.h ?? 50.h)),
        shape: WidgetStateProperty.all(RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(16),
        )),
      ),
      child: Text(
        text,
        style: textStyle ?? TextStyles.font16WhiteSemiBold,
      ),
    );
  }
}
