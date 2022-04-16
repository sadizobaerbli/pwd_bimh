import 'package:flutter/material.dart';
import 'package:pwd_bimh/config/colors.dart';
import 'package:pwd_bimh/config/text_styles.dart';
import 'package:pwd_bimh/pages/home_drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//=======Basically its the dashboard page=======
//----------------------------------------------

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  //===============variable section===============
  //----------------------------------------------

  List<String> items = ['Admins','Executive Engineers','Additional Chief',
  'Superintending Engineers','Sub Divisional Engineers','Assistant Engineers'];

  //===============function section===============
  //----------------------------------------------

  gridItem(int index){
    return Container(
      margin: EdgeInsets.only(bottom: 6.h),
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
        color: primaryBlue,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ImageIcon(
            const AssetImage('assets/icons/team.png'),
            size: 32.sp, color: white,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('0',
                textAlign: TextAlign.center,
                style: boldText(24.sp, color: white),
              ),
              SizedBox(
                width: 97.w,
                child: Text(items[index].toUpperCase(),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: mediumText(10.sp, color: white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _appBar(BuildContext context){
    return Container(
      padding: EdgeInsets.only(top: 28.h,bottom: 4.h),
      color: primaryBlue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //==========custom menu icon from flatIcon========
          //------------------------------------------------
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: ImageIcon(
                  const AssetImage('assets/icons/menu.png'),
                  color: white, size: 16.sp,
                ),
                onPressed: (){
                  Scaffold.of(context).openDrawer();
                },
              ),
              Text('Dashboard', style: boldText(16.sp, color: white),),
            ],
          ),
          //==========this part contain profile picture=========
          //-----------------------------------------------------
          Padding(
            padding: EdgeInsets.only(right: 8.w),
            child: CircleAvatar(
              radius: 14.r,
              backgroundImage:const AssetImage('assets/images/user_image.png'),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Builder(
        builder: (context){
          return Column(
            children: [
              _appBar(context),
              GridView.builder(
                padding: EdgeInsets.fromLTRB(10.w,16.h,10.w,0),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 74.h,
                  mainAxisSpacing: 16.h,
                  crossAxisSpacing: 12.w,
                ),
                itemCount: 6,
                itemBuilder: (context, index){
                  return gridItem(index);
                }
              ),
            ],
          );
        },
      ),
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width*.8,
        child: Drawer(
          child: HomeDrawer(),
        ),
      ),
    );
  }
}
