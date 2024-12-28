import 'package:flutter/material.dart';

import 'doctors_list_view.dart';


class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return setupSuccess();
  }

  Widget setupSuccess(/*doctorsList*/) {
    return DoctorsListView(
      //doctorsList: doctorsList,
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}