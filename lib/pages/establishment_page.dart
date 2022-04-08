import 'package:flutter/material.dart';
import 'package:pwd_bimh/config/colors.dart';
import 'package:pwd_bimh/config/text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EstablishmentPage extends StatelessWidget {
  final String? title;
  EstablishmentPage({Key? key, this.title}) : super(key: key);

  //====================variables=================
  //----------------------------------------------

  final List<String> keys = ['Building Id', 'Building Name',
    'Concerned Ministry', 'Uses of building', 'PWD Division', 'Project Name'];

  final List<String> values = ['PWD-102212221', 'Turag Thana Building',
    'Ministry of Home Affairs', '-----', 'Mohakhali PWD Division',
    'Construction of 101 dilapitaded thana for police department'];

  final List<Color> colors = [primaryBlue, yellow, indigo, pink];

  final List<String> urls = ['assets/icons/view.png',
    'assets/icons/send-message.png', 'assets/icons/document.png',
    'assets/icons/archive.png'];

  //====================Functions=================
  //----------------------------------------------

  _cardItem({String? key, String? value}){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 2,
              child: Text(key!, style: semiBoldText(13.sp, color: white),),
          ),
          SizedBox(width: 12.w,),
          Expanded(
              flex: 3,
              child: Text(value!, style: regularText(12.sp, color: white),),
          ),
        ],
      ),
    );
  }

  _actionButton(String url, {Color? color}){
    return Container(
      padding: EdgeInsets.all(8.sp),
      margin: EdgeInsets.only(right: 12.w),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: color!, width: 1.5.sp),
      ),
      child: ImageIcon(
        AssetImage(url),
        color: color, size: 16.sp,
      ),
    );
  }

  _card(){
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Stack(
        children: [
          SizedBox(
            height: 244.h,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(15.r),
                child: Image.asset('assets/images/building.jpg',
                  fit: BoxFit.fill,
                ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15.r),
            child: Container(
              padding: EdgeInsets.all(8.sp),
              color: black.withOpacity(.6),
              child: Column(
                children: [
                  Column(
                    children: List.generate(
                      keys.length, (index) => _cardItem(
                        key: keys[index], value: values[index]),
                    ),
                  ),
                  SizedBox(height: 4.h,),
                  Text('Actions', style: boldText(14.sp, color: white),),
                  SizedBox(height: 8.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        colors.length, (index) => _actionButton(
                          urls[index], color: colors[index]
                        ),
                    ),
                  ),
                  SizedBox(height: 4.h,),
                ],
              ),
            ),
          ),
        ],
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
        title: Text(title!,
        style: extraBoldText(18, color: white),),
      ),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.fromLTRB(12.sp,12.sp,12.sp,46.sp),
            children: List.generate(5, (index) => _card(),),
          ),
          Positioned(
            bottom: 0, left: 0, right: 0,
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/addEstablishment');
              },
              child: Container(
                height: 46.h, width: double.infinity,
                color: primaryBlue,
                child: Center(
                  child: Text('ADD NEW ESTABLISHMENT',
                  style: boldText(13.sp, color: white),),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
