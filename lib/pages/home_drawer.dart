import 'package:flutter/material.dart';
import 'package:pwd_bimh/config/colors.dart';
import 'package:pwd_bimh/pages/establishment_page.dart';
import 'package:pwd_bimh/config/text_styles.dart';

class HomeDrawer extends StatelessWidget {
  HomeDrawer({Key? key}) : super(key: key);

  //====================Variables=================
  //----------------------------------------------
  final List<String> _categories = ['Establishment', 'Roles', 'Administrations',
    'Others'];

  final List<List<String>> _subcategories = [['Establishment',
    'Pending Establishment', 'Archived Establishment', 'Add Establishment',
    'Trashed Establishment'],
    ['Roles', 'Role Wise Permissions'] , ['Activity  Log', 'File Manager'],
    ['User Manual', 'Video Tutorial']];
  //====================Functions=================
  //----------------------------------------------
  _drawerTopPart(){
    return Container(
      height: 80, width: double.maxFinite,
      padding: const EdgeInsets.only(top: 30),
      color: primaryBlue,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(width: 14,),
          SizedBox(
            height: 41, width: 41,
            child: Image.asset('assets/images/launch_image.png',
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(width: 8,),
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('গণপূর্ত অধিদপ্তর', style: extraBoldText(13,
                    color: Colors.white),
                ),
                Text('Public Works Department', style: extraBoldText(13,
                    color: Colors.white),
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
            const SizedBox(width: 14,),
            Text(category!, style: semiBoldText(14, color: Colors.black54),),
          ],
        ),
        const SizedBox(height: 12,),
        Column(
          children: List.generate(_subcategories[currentIndex!].length,
                (index) => _subCategory(
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
        Navigator.push(context, MaterialPageRoute(builder:
            (context)=> EstablishmentPage(title: subCategory!),),);
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Row(
          children: [
            const SizedBox(width: 16,),
            const Icon(Icons.apps_outlined),
            const SizedBox(width: 26,),
            Text(subCategory!, style: mediumText(13),),
            const Spacer(),
            Text('', style: mediumText(12, color: Colors.grey),),
            const SizedBox(width: 12,),
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
        const SizedBox(height: 12,),
        Column(
          children: List.generate(_categories.length,
                (index) => _category(context,
                    currentIndex: index,
                    category: _categories[index],),
          ),
        ),
      ],
    );
  }
}
