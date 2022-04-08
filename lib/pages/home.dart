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
              backgroundImage: const AssetImage('assets/images/user_image.png'),
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
                padding: EdgeInsets.fromLTRB(16.w,16.h,16.w,0),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.h,
                  crossAxisSpacing: 12.w,
                ),
                itemCount: 6,
                itemBuilder: (context, index){
                return Container(
                  margin: EdgeInsets.only(bottom: 6.h),
                  decoration: BoxDecoration(
                     color: white,
                     borderRadius: BorderRadius.circular(16.r),
                     boxShadow: [
                        BoxShadow(
                           color: black.withOpacity(.1),
                           spreadRadius: 2,
                           blurRadius: 1
                        ),
                     ],
                  ),
                  child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       ImageIcon(
                         const AssetImage('assets/icons/team.png'),
                         size: 32.sp, color: primaryBlue,
                       ),
                       SizedBox(height: 6.h,),
                       Text('0',
                         textAlign: TextAlign.center,
                         style: boldText(24.sp, color: primaryBlue),
                       ),
                       SizedBox(height: 6.h,),
                       Text(items[index].toUpperCase(),
                         textAlign: TextAlign.center,
                         maxLines: 2,
                         style: boldText(12.sp, color: primaryBlue),
                       ),
                     ],
                  ),
                );}
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
