import 'package:flutter/material.dart';
import 'package:pwd_bimh/config/text_styles.dart';
import 'colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomTextField extends StatelessWidget {
  final String textFieldTitle;
  final bool hasPrefix;
  final double titleSize;
  CustomTextField({
    Key? key,
    required this.textFieldTitle,
    this.hasPrefix = false , this.titleSize = 16}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: titleSize == 16 ? 0 : 14.h),
            child: Text(textFieldTitle, style: semiBoldText(titleSize.sp),),
          ),
          SizedBox(height: 12.h,),
          Container(
            width: double.infinity, height: titleSize == 16 ? 42.h : 38.h,
            margin: EdgeInsets.symmetric(
                horizontal: titleSize == 16 ? 0 : 14.h),
            padding: EdgeInsets.only(left: 12.w, bottom: 2.h),
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(24.r),
              boxShadow: [
                BoxShadow(
                    color: black.withOpacity(.1),
                    spreadRadius: 2,
                    blurRadius: 1
                ),
              ],
            ),
            child: TextField(
              style: regularText(13.sp),
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixText: hasPrefix ? 'PWD-' : '',
                prefixStyle: regularText(12.sp),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
