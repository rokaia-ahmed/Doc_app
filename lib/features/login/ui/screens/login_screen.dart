import 'package:appointments_app/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../widgets/already_have_account_text.dart';
import '../widgets/terms_conditions_text.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText =false ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 30.h,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back',
                style:TextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text('We\'re excited to have you back,'
                    ' can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(36),
                Form(
                  key: formKey,
                  child: Column(
                  children: [
                   AppTextFormField(
                       hintText: 'Email',
                   ),
                    verticalSpace(18),
                    AppTextFormField(
                      hintText: 'Password',
                      isObscureText:isObscureText,
                      suffixIcon: GestureDetector(
                        onTap:(){
                          isObscureText = !isObscureText ;
                          setState(() {});
                        },
                        child: Icon(
                            isObscureText?
                        Icons.visibility_off:
                        Icons.visibility,
                        //color: ColorsManager.mainBlue,
                        ),
                      ),
                    ),
                    verticalSpace(18),
                    InkWell(
                      onTap:(){},
                      child: Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: Text('Forgot Password?',
                         style: TextStyles.font12BlueNormal,
                        ),
                      ),
                    ),
                    verticalSpace(40),
                    AppTextButton(
                      onPressed: () {  },
                      text: 'Login',),
                    verticalSpace(30),
                    TermsConditionsText(),
                    verticalSpace(20),
                    AlreadyHaveAccountText(),
                  ],
                ),),
              ],
            ),
          ),
        ),
      ) ,
    );
  }
}
