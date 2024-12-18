import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class TermsConditionsText extends StatelessWidget {
  const TermsConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'By logging, you agree to our ',
        style: TextStyles.font13GrayRegular,
        children: [
          TextSpan(
            text: 'Terms & Conditions ',
            style: TextStyles.font14BlackW500,
          ),
          TextSpan(
            text: 'and ',
            style: TextStyles.font13GrayRegular,
          ),
          TextSpan(
            text: 'Privacy Policy.',
            style: TextStyles.font14BlackW500.copyWith(
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
