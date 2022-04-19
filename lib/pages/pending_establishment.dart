import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pwd_bimh/config/button_names.dart';
import 'package:pwd_bimh/config/colors.dart';
import 'package:pwd_bimh/routes/route_names.dart';
import 'package:pwd_bimh/config/text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PendingEstablishmentPage extends StatelessWidget {
  PendingEstablishmentPage({Key? key}) : super(key: key);

  //====================variables=================
  //----------------------------------------------

  final List<String> keys = [
    'Building Id',
    'Building Name',
    'Concerned Ministry',
    'Type'
  ];

  final List<String> pendingKeys = [
    'Approved By Admins',
    'Status',
    'Approved By Mechanical Engineer',
    'Approved By Civil Engineer'
  ];

  final List<String> values = [
    'PWD-102212221',
    'Turag Thana Building',
    'Ministry of Home Affairs',
    'Civil'
  ];

  final List<String> pendingValues = [
    'Pending',
    'Published',
    'Approved',
    'Pending',
  ];

  final List<Color> colors = [primaryBlue, yellow, indigo, pink];

  final List<String> urls = [
    'assets/icons/view.png',
    'assets/icons/send-message.png',
    'assets/icons/document.png',
    'assets/icons/archive.png'
  ];

  //====================Functions=================
  //----------------------------------------------

  Padding _cardItem({String? key, String? value}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Text(
              key!,
              style: semiBoldText(13.sp),
            ),
          ),
          SizedBox(
            width: 12.w,
          ),
          Expanded(
            flex: 2,
            child: Text(
              value!,
              style: regularText(
                12.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding _pendingAdditionalItem({String? pKey, String? pValue}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Text(
              pKey ?? '',
              style: semiBoldText(13.sp),
            ),
          ),
          SizedBox(
            width: 12.w,
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: green,
              ),
              child: Center(
                child: Text(
                  pValue ?? '',
                  style: regularText(12.sp),
                ),
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
      margin: EdgeInsets.only(right: 12.w),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: color!, width: 1.5.sp),
      ),
      child: ImageIcon(
        AssetImage(url),
        color: color,
        size: 16.sp,
      ),
    );
  }

  Container _card() {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      child: Container(
        padding: EdgeInsets.all(8.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: yellow.withOpacity(.2),
        ),
        child: Column(
          children: [
            //=======_cardItems indicates information as key-value==========
            //--------------------------------------------------------------

            Column(
              children: List.generate(
                keys.length,
                (index) => _cardItem(key: keys[index], value: values[index]),
              ),
            ),

            //=====_pendingAdditionalItem indicates information with buttons====
            //------------------------------------------------------------------

            Column(
              children: List.generate(
                pendingKeys.length,
                (i) => _pendingAdditionalItem(
                    pKey: pendingKeys[i], pValue: pendingValues[i]),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              'Actions',
              style: boldText(14.sp),
            ),
            SizedBox(
              height: 8.h,
            ),

            //=======_actionButton indicates the icon buttons on the card======
            //-----------------------------------------------------------------

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                colors.length,
                (index) => _actionButton(urls[index], color: colors[index]),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: primaryBlue,
        title: Text(
          'Pending Establishment',
          style: extraBoldText(18, color: white),
        ),
      ),
      body: Stack(
        children: [
          //========_card indicates every item in list==========
          //----------------------------------------------------

          ListView(
            padding: EdgeInsets.fromLTRB(12.sp, 12.sp, 12.sp, 46.sp),
            children: List.generate(
              5,
              (index) => _card(),
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: GestureDetector(
              onTap: () {
                context.pushNamed(addEstablishmentPage);
              },
              child: Container(
                height: 46.h,
                width: double.infinity,
                color: primaryBlue,
                child: Center(
                  child: Text(
                    addEstablishmentButton,
                    style: boldText(13.sp, color: white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
