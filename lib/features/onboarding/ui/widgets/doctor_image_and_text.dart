import 'package:appointments_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        SvgPicture.asset('assets/svgs/docdoc_logo_low_opacity.svg',),
        Container(
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white.withOpacity(0.0),
                ],
              begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [0.14,0.4],
              ),
            ),
            child: Image.asset('assets/images/on_boarding.png'),
        ),
        Positioned(
          bottom: 30,
          left: 0.0,right: 0.0,
          child: Text('Best Doctor \n Appointment App',
        style: TextStyles.font32BlackWeight.copyWith(
          height: 1.4,),
            textAlign: TextAlign.center,),

        ),
      ],
    );
  }
}
