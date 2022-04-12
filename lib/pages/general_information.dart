import 'package:flutter/material.dart';
import 'package:pwd_bimh/config/custom_dropdown.dart';
import 'package:pwd_bimh/config/custom_radio.dart';
import 'package:pwd_bimh/config/custom_textfield.dart';
import 'package:pwd_bimh/config/text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GeneralInformation extends StatelessWidget {
  GeneralInformation({Key? key}) : super(key: key);

  //=======CustomTextField, CustomRadioSelection, CustomDropDown used=====
  //----------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextField(textFieldTitle: 'Establishment ID', hasPrefix: true,),
        CustomTextField(textFieldTitle: 'Establishment Name',),
        CustomDropDown(
          dropdownTitle: 'Concerned Ministry', titleSize: 16,
          dropdownButtons: const ["President's Office", "Ministry of Education",
            "Ministry of Home Affairs",  "Prime Minister's Office"],
        ),
        CustomTextField(textFieldTitle: 'Project Name',),
        CustomRadioSelection(
          radioTitle: 'Establishment Category',
          radioButtons: const ['Civil', 'Electrical/Mechanical', 'Both'],
        ),
        CustomRadioSelection(
          radioTitle: 'Constructed By',
          radioButtons: const ['PWD', 'Others'],),

        Padding(
          padding: EdgeInsets.only(bottom: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Civil', style: boldText(16.sp),),
              Divider(thickness: 2.h,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8.h,),
                  CustomDropDown(
                    dropdownTitle: 'Zone',
                    dropdownButtons: const ["No Data Available"],
                  ),
                  CustomDropDown(
                    dropdownTitle: 'Circle',
                    dropdownButtons: const ["No Data Available"],
                  ),
                  CustomDropDown(
                    dropdownTitle: 'Division',
                    dropdownButtons: const ["No Data Available"],
                  ),
                  CustomDropDown(
                    dropdownTitle: 'Sub Division',
                    dropdownButtons: const ["No Data Available"],
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 12.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Electrical/Mechanical', style: boldText(16.sp),),
              Divider(thickness: 2.h,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8,),
                  CustomDropDown(
                    dropdownTitle: 'Zone',
                    dropdownButtons: const ["No Data Available"],
                  ),
                  CustomDropDown(
                    dropdownTitle: 'Circle',
                    dropdownButtons: const ["No Data Available"],
                  ),
                  CustomDropDown(
                    dropdownTitle: 'Division',
                    dropdownButtons: const ["No Data Available"],
                  ),
                  CustomDropDown(
                    dropdownTitle: 'Sub Division',
                    dropdownButtons: const ["No Data Available"],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
