import 'package:flutter/material.dart';
import 'package:pwd_bimh/config/custom_dropdown.dart';
import 'package:pwd_bimh/config/custom_radio.dart';
import 'package:pwd_bimh/config/custom_textfield.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Civil extends StatelessWidget {
  Civil({Key? key}) : super(key: key);

  //=======CustomTextField, CustomRadioSelection, CustomDropDown used=====
  //----------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomRadioSelection(
          radioTitle: 'Structural Drawing ID',
          radioButtons: const ['Yes', 'No'],
        ),
        CustomRadioSelection(
          radioTitle: 'Architectural Drawing ID',
          radioButtons: const ['Yes', 'No'],
        ),
        CustomDropDown(
          dropdownTitle: 'Year of Construction', titleSize: 16,
          dropdownButtons: const ['1', '2', '3', '4', '5', '6'],
        ),
        CustomDropDown(
          dropdownTitle: 'Uses of Establishment', titleSize: 16,
          dropdownButtons: const ['No Data Available'],
        ),
        CustomTextField(textFieldTitle: 'Civil Other Information'),
        CustomTextField(textFieldTitle: 'Above Ground'),
        CustomTextField(textFieldTitle: 'Under Ground'),
        CustomRadioSelection(
          radioTitle: 'Ground Floor Parking',
          radioButtons: const ['Yes', 'No', 'Partial'],
        ),
        CustomTextField(textFieldTitle: 'Establishment Height'),
        CustomTextField(textFieldTitle: 'Plinth Area'),
        CustomTextField(textFieldTitle: 'Total Floor Area'),
        CustomDropDown(
          dropdownTitle: 'Type of Structure', titleSize: 16,
          dropdownButtons: const ['No Data Available'],
        ),
        CustomDropDown(
          dropdownTitle: 'Foundation Type', titleSize: 16,
          dropdownButtons: const ['No Data Available'],
        ),
        CustomTextField(textFieldTitle: 'Foundation Designed For'),
        SizedBox(height: 20.h),
      ],
    );
  }
}