import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Already have an account yet?',
          style: TextStyles.font11BlackNormal,
        ),
        horizontalSpace(5),
        InkWell(
            onTap:(){},
            child: Text('Sign Up',
              style: TextStyles.font11BlueW600,
            )),
      ],
    );
  }
}
