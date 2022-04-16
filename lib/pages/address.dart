import 'package:flutter/material.dart';
import 'package:pwd_bimh/config/custom_dropdown.dart';
import 'package:pwd_bimh/config/custom_textfield.dart';
import 'package:pwd_bimh/config/text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Address extends StatelessWidget {
  Address({Key? key}) : super(key: key);

  //=======CustomTextField, CustomRadioSelection, CustomDropDown used=====
  //----------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Address', style: boldText(16.sp),),
              Divider(thickness: 2.h,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8.h,),
                  CustomDropDown(
                    dropdownTitle: 'Division',
                    dropdownButtons: const ["No Data Available"],
                  ),
                  CustomDropDown(
                    dropdownTitle: 'District',
                    dropdownButtons: const ["No Data Available"],
                  ),
                  CustomDropDown(
                    dropdownTitle: 'Upazila/Thana',
                    dropdownButtons: const ["No Data Available"],
                  ),
                  CustomTextField(textFieldTitle: 'Union/Ward', titleSize: 14,),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Location', style: boldText(16.sp),),
              Divider(thickness: 2.h,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8.h,),
                  CustomTextField(textFieldTitle: 'Latitude', titleSize: 14,),
                  CustomTextField(textFieldTitle: 'Longitude', titleSize: 14,),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
