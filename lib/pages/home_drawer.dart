import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pwd_bimh/config/colors.dart';
import 'package:pwd_bimh/routes/route_names.dart';
import 'package:pwd_bimh/config/text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeDrawer extends StatelessWidget {
  HomeDrawer({Key? key}) : super(key: key);

  //====================Variables=================
  //----------------------------------------------

  final List<String> _categories = [
    'Establishment',
    'Reports',
    'Roles',
    'Administrations',
    'Others'
  ];

  final List<List<String>> _subcategories = [
    [
      'Establishment',
      'Pending Establishment',
      'Archived Establishment',
      'Add Establishment',
      'Trashed Establishment'
    ],
    ['Establishment Report', 'Report By Geolocation', 'Common Reports'],
    ['Roles', 'Role Wise Permissions'],
    ['Activity  Log', 'File Manager'],
    ['User Manual', 'Video Tutorial']
  ];

  //====================Functions=================
  //----------------------------------------------

  Container _drawerTopPart() {
    return Container(
      height: 80.h,
      width: double.maxFinite,
      padding: EdgeInsets.only(top: 30.h),
      color: primaryBlue,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 14.w,
          ),
          SizedBox(
            height: 41.h,
            width: 41.w,
            child: Image.asset(
              'assets/images/launch_image.png',
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: 8.w,
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'গণপূর্ত অধিদপ্তর',
                  style: extraBoldText(
                    15.sp,
                    color: white,
                  ),
                ),
                Text(
                  'Public Works Department',
                  style: extraBoldText(
                    15.sp,
                    color: white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column _category(BuildContext context,
      {String? category, int? currentIndex}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
              width: 14.w,
            ),
            Text(
              category!,
              style: semiBoldText(15.sp, color: black),
            ),
          ],
        ),
        SizedBox(
          height: 12.h,
        ),

        //=========_subCategory indicates every item in category===========
        //-----------------------------------------------------------------

        Column(
          children: List.generate(
            _subcategories[currentIndex!].length,
            (index) => _subCategory(
              context,
              subCategory: _subcategories[currentIndex][index],
            ),
          ),
        ),
      ],
    );
  }

  GestureDetector _subCategory(BuildContext context, {String? subCategory}) {
    return GestureDetector(
      onTap: () {
        if (subCategory == 'Establishment' ||
            subCategory == 'Archived Establishment' ||
            subCategory == 'Trashed Establishment') {
          context
              .pushNamed(establishmentPage, params: {"title": "$subCategory"});
        } else if (subCategory == 'Pending Establishment') {
          context.pushNamed(pendingEstablishmentPage);
        } else if (subCategory == 'Add Establishment') {
          context.pushNamed(addEstablishmentPage);
        } else if (subCategory == 'Establishment Report') {
          context.pushNamed(establishmentReportPage);
        }
      },
      child: Padding(
        padding: EdgeInsets.only(bottom: 12.sp),
        child: Row(
          children: [
            SizedBox(
              width: 16.w,
            ),
            ImageIcon(
              const AssetImage('assets/icons/establishment.png'),
              size: 18.sp,
              color: deepGrey,
            ),
            SizedBox(
              width: 26.w,
            ),
            Text(
              subCategory!,
              style: semiBoldText(14.sp, color: deepGrey),
            ),
            const Spacer(),
            Text(
              '',
              style: mediumText(12.sp, color: Colors.grey),
            ),
            SizedBox(
              width: 12.w,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(0),
      children: [
        //=======indicates the top section============
        //--------------------------------------------

        _drawerTopPart(),

        SizedBox(
          height: 12.h,
        ),

        //============indicates the drawer category============
        //-----------------------------------------------------

        Column(
          children: List.generate(
            _categories.length,
            (index) => _category(
              context,
              currentIndex: index,
              category: _categories[index],
            ),
          ),
        ),
      ],
    );
  }
}
