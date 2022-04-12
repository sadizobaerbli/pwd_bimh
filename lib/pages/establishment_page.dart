import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pwd_bimh/config/colors.dart';
import 'package:pwd_bimh/config/route_names.dart';
import 'package:pwd_bimh/config/text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EstablishmentPage extends StatelessWidget {
  final String? title;
  EstablishmentPage({Key? key, this.title}) : super(key: key);

  //====================variables=================
  //----------------------------------------------

  final List<String> values = ['Turag Thana Building',
    'Ministry of Home Affairs'];

  final List<Color> colors = [primaryBlue, indigo, pink];

  final List<String> urls = ['assets/icons/send-message.png',
    'assets/icons/document.png', 'assets/icons/archive.png'];

  //====================Functions=================
  //----------------------------------------------

  _cardItem({String? key, String? value}){
    return Padding(
        padding: EdgeInsets.only(left: 12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(key!, style: boldText(13.sp,),),
            Padding(
              padding: EdgeInsets.only(top: 2.w),
              child: Text(value!, style: mediumText(14.sp, color: grey),),
            ),
          ],
        )
    );
  }

  _actionButton(String url, {Color? color}){
    return Container(
      padding: EdgeInsets.all(8.sp),
      margin: EdgeInsets.only(right: 8.w),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: color!, width: 1.5.sp),
      ),
      child: ImageIcon(
        AssetImage(url),
        color: color, size: 12.sp,
      ),
    );
  }

  _card(BuildContext context){
    return GestureDetector(
      onTap: (){
        context.goNamed(viewEstablishmentPage, params: {
          "title" : title!,
          "pwdId" : "PWD-10202000"},
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                SizedBox(height: 12.h,),
                _cardItem(key: 'Building Name', value: values[0]),
                SizedBox(height: 4.h,),
                _cardItem(key: 'Concerned Ministry', value: values[1]),
                SizedBox(height: 12.h,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  colors.length, (index) => _actionButton(
                    urls[index], color: colors[index]
                  ),
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
            children: List.generate(5, (index) => _card(context),),
          ),
          Positioned(
            bottom: 0, left: 0, right: 0,
            child: GestureDetector(
              onTap: (){
                context.goNamed(addEstablishmentPage);
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
