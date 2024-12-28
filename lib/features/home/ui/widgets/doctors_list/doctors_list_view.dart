import 'package:flutter/material.dart';

import 'doctors_list_view_item.dart';


class DoctorsListView extends StatelessWidget {
 // final List<Doctors?>? doctorsList;
  const DoctorsListView({super.key, /*this.doctorsList*/});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount:5  /*doctorsList?.length*/,
        itemBuilder: (context, index) {
          return DoctorsListViewItem(
           // doctorsModel: doctorsList?[index],
          );
        },
      ),
    );
  }
}