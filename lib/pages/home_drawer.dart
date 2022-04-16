import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pwd_bimh/config/colors.dart';
import 'package:pwd_bimh/config/route_names.dart';
import 'package:pwd_bimh/config/text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeDrawer extends StatelessWidget {
  HomeDrawer({Key? key}) : super(key: key);

  //====================Variables=================
  //----------------------------------------------

  final List<String> _categories = ['Establishment', 'Reports', 'Roles',
    'Administrations', 'Others'];

  final List<List<String>> _subcategories = [['Establishment',
    'Pending Establishment', 'Archived Establishment', 'Add Establishment',
    'Trashed Establishment'],['Establishment Report', 'Report By Geolocation',
    'Common Reports'], ['Roles', 'Role Wise Permissions'] ,
    ['Activity  Log', 'File Manager'], ['User Manual', 'Video Tutorial']];

  //====================Functions=================
  //----------------------------------------------

  _drawerTopPart(){
    return Container(
      height: 80.h, width: double.maxFinite,
      padding: EdgeInsets.only(top: 30.h),
      color: primaryBlue,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 14.w,),
          SizedBox(
            height: 41.h, width: 41.w,
            child: Image.asset('assets/images/launch_image.png',
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(width: 8.w,),
          Padding(
            padding: EdgeInsets.only(top: 2.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'গণপূর্ত অধিদপ্তর',
                  style: extraBoldText(15.sp, color: white,),
                ),
                Text(
                  'Public Works Department',
                  style: extraBoldText(15.sp, color: white,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _category(BuildContext context, {String? category, int? currentIndex}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(width: 14.w,),
            Text(category!, style: semiBoldText(14.sp, color: black),),
          ],
        ),
        SizedBox(height: 12.h,),
        Column(
          children: List.generate(
            _subcategories[currentIndex!].length, (index) => _subCategory(
              context, subCategory: _subcategories[currentIndex][index],
            ),
          ),
        ),
      ],
    );
  }

  _subCategory(BuildContext context, {String? subCategory,}){
    return GestureDetector(
      onTap: (){
        if(subCategory == 'Establishment' ||
            subCategory == 'Archived Establishment' ||
            subCategory == 'Trashed Establishment'){
          context.goNamed(establishmentPage, params:{'title' : "$subCategory"});
        }
        else if(subCategory == 'Pending Establishment'){
          context.goNamed(pendingEstablishmentPage);
        }
        else if(subCategory == 'Add Establishment'){
          context.goNamed(addEstablishmentPage);
        }
        else if(subCategory == 'Establishment Report'){
          context.goNamed(establishmentReportPage);
        }
      },
      child: Padding(
        padding: EdgeInsets.only(bottom: 8.sp),
        child: Row(
          children: [
            SizedBox(width: 16.w,),
            const Icon(Icons.apps_outlined),
            SizedBox(width: 26.w,),
            Text(subCategory!, style: semiBoldText(13.sp),),
            const Spacer(),
            Text('', style: mediumText(12.sp, color: Colors.grey),),
            SizedBox(width: 12.w,),
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
        _drawerTopPart(),
        SizedBox(height: 12.h,),
        Column(
          children: List.generate(
            _categories.length, (index) => _category(
              context, currentIndex: index, category: _categories[index],
            ),
          ),
        ),
      ],
    );
  }
}
