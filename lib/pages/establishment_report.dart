import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pwd_bimh/config/colors.dart';
import 'package:pwd_bimh/config/custom_dropdown.dart';
import 'package:pwd_bimh/config/custom_radio.dart';
import 'package:pwd_bimh/config/custom_textfield.dart';
import 'package:pwd_bimh/routes/route_names.dart';
import 'package:pwd_bimh/config/text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EstablishmentReportPage extends StatelessWidget {
  EstablishmentReportPage({Key? key}) : super(key: key);

  //===============variables=================
  //-----------------------------------------

  final List<String> values = [
    'Turag Thana Building',
    'Ministry of Home Affairs'
  ];

  final List<Color> colors = [primaryBlue, indigo, pink];

  final List<String> urls = [
    'assets/icons/send-message.png',
    'assets/icons/document.png',
    'assets/icons/archive.png'
  ];

  final List<String> radioButtons = ['All Over Bangladesh', 'Zone', 'Circle'];

  final List<String> radioButtons1 = ['Division', 'Sub Division'];

  Object _isRadioSelected = '';

  //=================functions===============
  //-----------------------------------------

  List<Padding> _radioButtons(List<String> radioButtons) {
    return List.generate(
      radioButtons.length,
      (index) => Padding(
        padding: EdgeInsets.only(bottom: 4.h),
        child: Row(
          children: [
            SizedBox(
              height: 20.h,
              width: 20.w,
              child: Radio(
                value: radioButtons[index],
                activeColor: primaryBlue,
                groupValue: _isRadioSelected,
                onChanged: (newValue) {
                  _isRadioSelected = newValue!;
                },
              ),
            ),
            SizedBox(
              width: 12.w,
            ),
            Text(
              radioButtons[index],
              style: mediumText(16.r),
            ),
          ],
        ),
      ),
    );
  }

  Row _submitButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Text(
            'Reset',
            style: semiBoldText(13.sp, color: white),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            'Search',
            style: semiBoldText(13.sp, color: white),
          ),
        ),
      ],
    );
  }

  Container _bottomPart(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: white,
        boxShadow: [
          BoxShadow(
            color: black.withOpacity(.1),
            spreadRadius: 2,
            blurRadius: 1,
          ),
        ],
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(18.r),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
          Container(
            width: double.infinity,
            height: 40.h,
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            padding: EdgeInsets.only(left: 12.w, bottom: 2.h, right: 12.w),
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(24.r),
              boxShadow: [
                BoxShadow(
                  color: black.withOpacity(.1),
                  spreadRadius: 2,
                  blurRadius: 1,
                ),
              ],
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 8.w,
                ),
                ImageIcon(
                  const AssetImage('assets/icons/search.png'),
                  size: 16.sp,
                  color: grey,
                ),
                SizedBox(
                  width: 8.w,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.h),
                    child: TextField(
                      style: regularText(13.sp),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Type Something',
                        hintStyle: mediumText(13.sp, color: grey),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'PRINT DETAILS',
                    style: semiBoldText(13.sp, color: white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'PRINT',
                    style: semiBoldText(13.sp, color: white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'CSV',
                    style: semiBoldText(13.sp, color: white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'XLSX',
                    style: semiBoldText(13.sp, color: white),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h),

          //=======_card indicates items in bottom bar=============
          //-------------------------------------------------------

          Padding(
            padding: EdgeInsets.fromLTRB(12.sp, 12.sp, 12.sp, 46.sp),
            child: Column(
              children: List.generate(
                5,
                (index) => _card(context),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _actionButton(String url, {Color? color}) {
    return Container(
      padding: EdgeInsets.all(8.sp),
      margin: EdgeInsets.only(right: 8.w),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: color!, width: 1.5.sp),
      ),
      child: ImageIcon(
        AssetImage(url),
        color: color,
        size: 12.sp,
      ),
    );
  }

  Padding _cardItem({String? key, String? value}) {
    return Padding(
        padding: EdgeInsets.only(left: 12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              key!,
              style: boldText(
                13.sp,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2.w),
              child: Text(
                value!,
                style: mediumText(14.sp, color: grey),
              ),
            ),
          ],
        ));
  }

  GestureDetector _card(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(
          viewEstablishmentPage,
          params: {"pwdId": "PWD-10202000"},
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 12.h),
        decoration: BoxDecoration(
          color: yellow.withOpacity(.2),
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //=======_cardItem indiacates items in bottom card=============
            //-------------------------------------------------------------

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 12.h,
                ),
                _cardItem(key: 'Building Name', value: values[0]),
                SizedBox(
                  height: 4.h,
                ),
                _cardItem(key: 'Concerned Ministry', value: values[1]),
                SizedBox(
                  height: 12.h,
                ),
              ],
            ),

            //========_actionButton indicates icon_buttons on the card=========
            //-----------------------------------------------------------------

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                colors.length,
                (index) => _actionButton(urls[index], color: colors[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: primaryBlue,
        title: Text(
          'Establishment Report',
          style: extraBoldText(18, color: white),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 16.h),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Reported By',
                        style: boldText(16.sp),
                      ),
                      Divider(
                        thickness: 2.h,
                      ),

                      //========_radioButtons indicates list of radio======
                      //---------------------------------------------------

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: _radioButtons(radioButtons),
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: _radioButtons(radioButtons1),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ExpansionTile(
                  tilePadding: const EdgeInsets.all(0),
                  childrenPadding: const EdgeInsets.all(0),
                  title: Text(
                    'Geo Location',
                    style: boldText(16.sp),
                  ),
                  children: [
                    Divider(
                      thickness: 2.h,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
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
                  dropdownTitle: 'Concerned Ministry',
                  titleSize: 16,
                  dropdownButtons: const [
                    "President's Office",
                    "Ministry of Education",
                    "Ministry of Home Affairs",
                    "Prime Minister's Office"
                  ],
                ),
                CustomDropDown(
                  dropdownTitle: 'Uses of Establishment',
                  titleSize: 16,
                  dropdownButtons: const ['No Data Available'],
                ),
                CustomDropDown(
                  dropdownTitle: 'Year of Construction',
                  titleSize: 16,
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
                    Divider(
                      thickness: 2.h,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    CustomTextField(
                        textFieldTitle: 'Minimum Height', titleSize: 14),
                    CustomTextField(
                        textFieldTitle: 'Maximum Height', titleSize: 14),
                    CustomTextField(
                        textFieldTitle: 'Minimum Substation', titleSize: 14),
                    CustomTextField(
                        textFieldTitle: 'Maximum Substation', titleSize: 14),
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

                //==========indicates buttons before bottom section=======
                //--------------------------------------------------------

                _submitButtons(),
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),

          //============bottom part of the body===========
          //----------------------------------------------

          _bottomPart(context),
        ],
      ),
    );
  }
}
