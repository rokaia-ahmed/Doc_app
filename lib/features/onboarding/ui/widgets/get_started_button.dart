import 'package:appointments_app/core/helpers/extentions.dart';
import 'package:appointments_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: (){
          context.pushNamed(Routes.loginScreen);
        },
        style: ButtonStyle(
          backgroundColor:WidgetStateProperty.all(ColorsManager.mainBlue),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: WidgetStateProperty.all(
              Size(double.infinity, 52)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          )),
        ),
        child: Text('Get Started',
        style:TextStyles.font16WhiteSemiBold ,
        ),
    );
  }
}
