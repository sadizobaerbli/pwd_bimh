import 'package:flutter/material.dart';
import 'package:pwd_bimh/config/colors.dart';
import 'package:pwd_bimh/config/text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewEstablishmentPage extends StatelessWidget {
  final String pwdId;
  ViewEstablishmentPage({Key? key, required this.pwdId}) : super(key: key);

  //====================variables=================
  //----------------------------------------------

  final List<String> keys = ['Date of Entry', 'Establishment Name',
    'Concerned Ministry', 'Project Name', 'Constructed By',
    'Name of the Civil PWD Zone', 'Name of the Civil PWD Circle',
    'Name of the Civil PWD Division', 'Name of the Civil PWD Sub Division',
    'Name of the Mechanical PWD Zone', 'Name of the Mechanical PWD Circle',
    'Name of the Mechanical PWD Division',
    'Name of the Mechanical PWD Sub Division', 'Division', 'District',
    'Upazilla/Thana', 'Union/Ward', 'Latitude', 'Longitude',
    "Establishment Type", 'Structural Drawing ID', 'Architectural Drawing ID',
    'Ground Floor Parking', 'Uses Of Establishment', 'Year of Construction',
    'Establishment Height(feet)', 'Number Of Floor Above Ground',
    'Number Of Floor Under Ground', 'Type of Structure', 'Foundation Type',
    'Plinth (sq. feet)', 'Floor Area (sq. feet)', 'Ground Floor Parking',
    'Foundation Designed For', 'Civil Other Information'
  ];

  final List<String> values = ['Mon, Nov 29, 2021 5:08 PM',
    'Turag Thana Building',
    'Ministry of Home Affairs', 'Construction of Chancery Police Line',
    'PWD', 'PWD Dhaka Metropolitan Zone, Dhaka', 'Dhaka PWD Circle -3, Dhaka',
    'Mohakhali PWD Division, Dhaka',
    'Uttara PWD Sub -Division, Mohakhali, Dhaka','PWD E/M Zone, Dhaka',
    'PWD E/M Circle -3, Dhaka','PWD E/M Division -8, Dhaka',
    'PWD E/M Sub -Division -16, Dhaka', 'Dhaka', 'Dhaka', 'Gulshan', '0',
    '23.81034','90.41254','Residential','No','No', 'No','Residential',
    '1985','80.0000','6','0', 'Masonry', 'Footing', '6200', '37200', 'No',
    '6', 'N/A'
  ];

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
            child: Text(key!, style: semiBoldText(13.sp, color: black),),
          ),
          SizedBox(width: 12.w,),
          Expanded(
            flex: 3,
            child: Text(value!, style: regularText(13.sp, color: black),),
          ),
        ],
      ),
    );
  }

  _imagePart(){
    return SizedBox(
      height: 160.h,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18.r),
        child: Image.asset('assets/images/building.jpg',
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  _detailsPart(){
    return Container(
      decoration: BoxDecoration(
        color: yellow.withOpacity(.2),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(18.r),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'PWD Index No.',
                    style: boldText(14.sp, color: black),
                  ),
                ),
                SizedBox(width: 12.w,),
                Expanded(
                  flex: 3,
                  child: Text(
                    pwdId,
                    style: regularText(14.sp, color: black),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: List.generate(
              keys.length, (index) => _cardItem(
                key: keys[index], value: values[index]),
            ),
          ),
          SizedBox(height: 4.h,),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: primaryBlue,
        title: Text('Turag Thana Building',
          style: extraBoldText(18, color: white),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(12.h),
        children: [
          _imagePart(),
          SizedBox(height: 12.h,),
          _detailsPart(),
        ],
      ),
    );
  }
}
