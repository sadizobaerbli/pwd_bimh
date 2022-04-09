import 'package:flutter/material.dart';
import 'package:pwd_bimh/config/text_styles.dart';
import 'colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropDown extends StatelessWidget {
  final String dropdownTitle;
  final List<String> dropdownButtons;
  final double titleSize;
  CustomDropDown({Key? key,
    required this.dropdownTitle,
    required this.dropdownButtons, this.titleSize = 14}) : super(key: key);

  String _currentItemSelected = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: titleSize == 14 ? 14.h : 0),
            child: Text(dropdownTitle, style: semiBoldText(titleSize.sp),),
          ),
          SizedBox(height: 12.h,),
          Container(
            width: double.infinity, height: titleSize == 14 ? 38.h : 42.h,
            margin: EdgeInsets.symmetric(
                horizontal: titleSize == 14 ? 14.h : 0),
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
            child: PopupMenuButton<String>(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
              itemBuilder: (context) {
                return dropdownButtons.map((str) {
                  return PopupMenuItem(
                    value: str,
                    child: Text(
                      str,
                      style: mediumText(12.sp, color: grey,),
                    ),
                  );
                }).toList();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(_currentItemSelected,
                    style: mediumText(12.sp, color: grey,),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 18.sp,
                    color: black,
                  ),
                ],
              ),
              onSelected: (v) {
                _currentItemSelected = v;
              },
            ),
          ),
        ],
      ),
    );
  }
}
