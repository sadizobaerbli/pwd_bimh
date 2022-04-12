import 'package:flutter/material.dart';
import 'package:pwd_bimh/config/colors.dart';
import 'package:pwd_bimh/config/custom_dropdown.dart';
import 'package:pwd_bimh/config/custom_radio.dart';
import 'package:pwd_bimh/config/custom_textfield.dart';
import 'package:pwd_bimh/config/text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EstablishmentReportPage extends StatelessWidget {
  EstablishmentReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: primaryBlue,
        title: Text('Establishment Report',
          style: extraBoldText(18, color: white),),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 16.h),
        children: [
          CustomRadioSelection(
              radioTitle: 'Reported By',
              radioButtons: const ['All Over Bangladesh', 'Zone', 'Circle',
                'Division', 'Sub Division'],
          ),
          ExpansionTile(
            tilePadding: const EdgeInsets.all(0),
            childrenPadding: const EdgeInsets.all(0),
            title: Text('Geo Location', style: boldText(16.sp),),
            children: [
              Divider(thickness: 2.h,),
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
              CustomDropDown(
                dropdownTitle: 'Union/Ward',
                dropdownButtons: const ["No Data Available"],
              ),
            ],
          ),
          CustomTextField(textFieldTitle: 'Project Name'),
          CustomDropDown(
            dropdownTitle: 'Concerned Ministry', titleSize: 16,
            dropdownButtons: const ["President's Office", "Ministry of Education",
              "Ministry of Home Affairs",  "Prime Minister's Office"],
          ),
          CustomDropDown(
            dropdownTitle: 'Uses of Establishment', titleSize: 16,
            dropdownButtons: const ['No Data Available'],
          ),
          CustomDropDown(
            dropdownTitle: 'Year of Construction', titleSize: 16,
            dropdownButtons: const ['1', '2', '3', '4', '5', '6'],
          ),
          ExpansionTile(
            tilePadding: const EdgeInsets.all(0),
            childrenPadding: const EdgeInsets.all(0),
            title: Text(
              'Establishment Height & Substation',
              style: boldText(16.sp),
            ),
            children: [
              Divider(thickness: 2.h,),
              SizedBox(height: 8.h,),
              CustomTextField(textFieldTitle: 'Minimum Height', titleSize: 14,),
              CustomTextField(textFieldTitle: 'Maximum Height', titleSize: 14,),
              CustomTextField(textFieldTitle: 'Minimum Substation', titleSize: 14,),
              CustomTextField(textFieldTitle: 'Maximum Substation', titleSize: 14,),
            ],
          ),
          CustomRadioSelection(
            radioTitle: 'File Protection System',
            radioButtons: const ['Complete', 'Partial', 'No'],
          ),
          CustomRadioSelection(
            radioTitle: 'Establishment Type',
            radioButtons: const ['Residential', 'Non Residential'],
          ),
        ],
      ),
    );
  }
}
