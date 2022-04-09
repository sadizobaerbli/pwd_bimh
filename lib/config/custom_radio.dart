import 'package:flutter/material.dart';
import 'package:pwd_bimh/config/text_styles.dart';
import 'colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRadioSelection extends StatelessWidget {
  final String radioTitle;
  final List<String> radioButtons;
  CustomRadioSelection({Key? key,
    required this.radioTitle, required this.radioButtons}) : super(key: key);

  Object _isRadioSelected = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(radioTitle, style: boldText(16.sp),),
          Divider(thickness: 2.h,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(radioButtons.length, (index) => Padding(
              padding: EdgeInsets.only(bottom: 4.h),
              child: Row(
                children: [
                  SizedBox(
                    height: 20.h, width: 20.w,
                    child: Radio(
                      value: radioButtons[index],
                      activeColor: primaryBlue,
                      groupValue: _isRadioSelected,
                      onChanged: (newValue) {
                        _isRadioSelected = newValue!;
                      },
                    ),
                  ),
                  SizedBox(width: 12.w,),
                  Text(radioButtons[index], style: mediumText(16.r),),
                ],
              ),
            ),),
          ),
        ],
      ),
    );
  }
}
