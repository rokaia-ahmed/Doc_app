import 'package:appointments_app/core/helpers/extentions.dart';
import 'package:appointments_app/core/routing/routes.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Don\'t have an account yet?',
          style: TextStyles.font11BlackNormal,
        ),
        horizontalSpace(5),
        InkWell(
            onTap:(){
              context.pushNamed(Routes.signUpScreen);
            },
            child: Text('Sign Up',
              style: TextStyles.font11BlueW600,
            )),
      ],
    );
  }
}
