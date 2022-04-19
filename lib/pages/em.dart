import 'package:flutter/material.dart';
import 'package:pwd_bimh/config/custom_radio.dart';
import 'package:pwd_bimh/config/custom_textfield.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EM extends StatelessWidget {
  EM({Key? key}) : super(key: key);

  /*=====================CustomDropDown, CustomRadioSelection, CustomTextField
  these are customized dropdown selcetion , customized radio selection and
  customized textfield widgets=========================*/

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextField(textFieldTitle: 'AC No.'),
        CustomTextField(textFieldTitle: 'Total AC Capacity'),
        CustomTextField(textFieldTitle: 'Generator No.'),
        CustomTextField(textFieldTitle: 'Total Generator Capacity'),
        CustomTextField(textFieldTitle: 'Motor/Pump No.'),
        CustomTextField(textFieldTitle: 'Motor/Pump Capacity'),
        CustomTextField(textFieldTitle: 'Substation'),
        CustomTextField(textFieldTitle: 'Total Substation Capacity'),
        CustomRadioSelection(
          radioTitle: 'File Detection System',
          radioButtons: const ['Complete', 'Partial', 'No'],
        ),
        CustomRadioSelection(
          radioTitle: 'File Protection System',
          radioButtons: const ['Complete', 'Partial', 'No'],
        ),
        CustomTextField(textFieldTitle: 'Lift No.'),
        CustomTextField(textFieldTitle: 'EM Other Information'),
        SizedBox(height: 20.h),
      ],
    );
  }
}
