import 'package:flutter/material.dart';
import 'package:pwd_bimh/config/colors.dart';
import 'package:pwd_bimh/config/text_styles.dart';
import 'package:pwd_bimh/pages/home_drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//=======Basically its the dashboard page=======
//----------------------------------------------

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  //===============variables===============
  //---------------------------------------

  List<String> items = [
    'Admins',
    'Executive Engineers',
    'Additional Chief',
    'Superintending Engineers',
    'Sub Divisional Engineers',
    'Assistant Engineers',
    'Approved',
    'Pending',
    'Denied',
    'Total Floor Area',
    'Total Boundary Wall',
    'Total Drainage',
    'Total Park',
    'Total Road'
  ];

  List<String> icons = [
    'assets/icons/team.png',
    'assets/icons/team.png',
    'assets/icons/team.png',
    'assets/icons/team.png',
    'assets/icons/team.png',
    'assets/icons/team.png',
    'assets/icons/dashboard_icons/currency.png',
    'assets/icons/dashboard_icons/currency.png',
    'assets/icons/dashboard_icons/currency.png',
    'assets/icons/dashboard_icons/currency.png',
    'assets/icons/dashboard_icons/floor.png',
    'assets/icons/dashboard_icons/wall.png',
    'assets/icons/dashboard_icons/drainage.png',
    'assets/icons/dashboard_icons/park.png',
    'assets/icons/dashboard_icons/road.png'
  ];

  List<String> values = [
    '8',
    '17',
    '40',
    '140',
    '256',
    '156',
    '17053',
    '1345',
    '0',
    '166333629',
    '2556304',
    '1188020',
    '53117',
    '24904815'
  ];

  List<Color> colors = const [
    Color(0xFF1959FF),
    Color(0xFF0288D1),
    Color(0xFF1560BD),
    Color(0xFF6FB7FF),
    Color(0xFF303F9F),
    Color(0xFFFF6A29),
    Color(0xFF17A96B),
    Color(0xFF303F9F),
    Color(0xFFE70E00),
    Color(0xFF545454),
    Color(0xFF545454),
    Color(0xFF545454),
    Color(0xFF545454),
    Color(0xFF545454)
  ];

  //===============functions===============
  //---------------------------------------

  Container _gridItem(int index) {
    return Container(
      margin: EdgeInsets.only(bottom: 6.h),
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
        color: colors[index],
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ImageIcon(
            AssetImage(icons[index]),
            size: 32.sp,
            color: white,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  values[index],
                  textAlign: TextAlign.center,
                  style: boldText(20.sp, color: white),
                ),
              ),
              SizedBox(
                width: 97.w,
                child: Text(
                  items[index].toUpperCase(),
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

  Container _appBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 28.h, bottom: 4.h),
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
                  color: white,
                  size: 16.sp,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
              Text(
                'Dashboard',
                style: boldText(16.sp, color: white),
              ),
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
        builder: (context) {
          return ListView(
            padding: const EdgeInsets.all(0),
            children: [
              //=========indicates the custom appbar===========
              //-----------------------------------------------

              _appBar(context),

              GridView.builder(
                  padding: EdgeInsets.fromLTRB(10.w, 16.h, 10.w, 0),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 74.h,
                    mainAxisSpacing: 6.h,
                    crossAxisSpacing: 8.w,
                  ),
                  itemCount: items.length,

                  //========_gridItem indicates items in the body==========
                  //-------------------------------------------------------

                  itemBuilder: (context, index) {
                    return _gridItem(index);
                  }),
            ],
          );
        },
      ),
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * .8,
        child: Drawer(
          child: HomeDrawer(),
        ),
      ),
    );
  }
}
