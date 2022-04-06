import 'package:flutter/material.dart';
import 'package:pwd_bimh/config/colors.dart';
import 'package:pwd_bimh/config/text_styles.dart';

class Civil extends StatelessWidget {
  Civil({Key? key}) : super(key: key);

  //--------------------variables-------------------
  //------------------------------------------------
  String _currentItemSelected = 'Concerned Ministry';
  Object _isRadioSelected = 'Civil';
  List<String> list = ["President's Office", "Prime Minister's Office",
    "Ministry of Education", "Ministry of Home Affairs"];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Structural Drawing ID', style: boldText(14),),
              const Divider(thickness: 2,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                    child: RadioListTile(
                      contentPadding: const EdgeInsets.all(0),
                      title: Text('Yes', style: mediumText(15),),
                      value: 'Yes',
                      activeColor: primaryBlue,
                      groupValue: _isRadioSelected,
                      onChanged: (newValue) {
                        _isRadioSelected = newValue!;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: RadioListTile(
                      contentPadding: const EdgeInsets.all(0),
                      title: Text('No', style: mediumText(15),),
                      value: 'No',
                      activeColor: primaryBlue,
                      groupValue: _isRadioSelected,
                      onChanged: (newValue) {
                        _isRadioSelected = newValue!;
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Architectural Drawing ID', style: boldText(14),),
              const Divider(thickness: 2,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                    child: RadioListTile(
                      contentPadding: const EdgeInsets.all(0),
                      title: Text('Yes', style: mediumText(15),),
                      value: 'Yes',
                      activeColor: primaryBlue,
                      groupValue: _isRadioSelected,
                      onChanged: (newValue) {
                        _isRadioSelected = newValue!;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: RadioListTile(
                      contentPadding: const EdgeInsets.all(0),
                      title: Text('No', style: mediumText(15),),
                      value: 'No',
                      activeColor: primaryBlue,
                      groupValue: _isRadioSelected,
                      onChanged: (newValue) {
                        _isRadioSelected = newValue!;
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Year of Construction', style: boldText(14),),
              const SizedBox(height: 12,),
              Container(
                width: 320, height: 40,
                padding: const EdgeInsets.only(left: 12, bottom: 2, right: 12),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                        color: black.withOpacity(.1),
                        spreadRadius: 2,
                        blurRadius: 1
                    ),
                  ],
                ),
                child: PopupMenuButton<String>(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  itemBuilder: (context) {
                    return list.map((str) {
                      return PopupMenuItem(
                        value: str,
                        child: Text(
                          str,
                          style: mediumText(12, color: grey,),
                        ),
                      );
                    }).toList();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(_currentItemSelected,
                        style: mediumText(12, color: grey,),
                      ),
                      const Icon(
                        Icons.arrow_drop_down,
                        size: 18,
                        color: black,
                      )
                    ],
                  ),
                  onSelected: (v) {
                    _currentItemSelected = v;
                  },
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Uses of Establishment', style: boldText(14),),
              const SizedBox(height: 12,),
              Container(
                width: 320, height: 40,
                padding: const EdgeInsets.only(left: 12, bottom: 2, right: 12),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                        color: black.withOpacity(.1),
                        spreadRadius: 2,
                        blurRadius: 1
                    ),
                  ],
                ),
                child: PopupMenuButton<String>(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  itemBuilder: (context) {
                    return list.map((str) {
                      return PopupMenuItem(
                        value: str,
                        child: Text(
                          str,
                          style: mediumText(12, color: grey,),
                        ),
                      );
                    }).toList();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(_currentItemSelected,
                        style: mediumText(12, color: grey,),
                      ),
                      const Icon(
                        Icons.arrow_drop_down,
                        size: 18,
                        color: black,
                      )
                    ],
                  ),
                  onSelected: (v) {
                    _currentItemSelected = v;
                  },
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Civil Other Information', style: boldText(14),),
              const SizedBox(height: 12,),
              Container(
                width: 320, height: 40,
                padding: const EdgeInsets.only(left: 12, bottom: 2),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                        color: black.withOpacity(.1),
                        spreadRadius: 2,
                        blurRadius: 1
                    ),
                  ],
                ),
                child: TextField(
                  style: regularText(13),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Above Ground', style: boldText(14),),
              const SizedBox(height: 12,),
              Container(
                width: 320, height: 40,
                padding: const EdgeInsets.only(left: 12, bottom: 2),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                        color: black.withOpacity(.1),
                        spreadRadius: 2,
                        blurRadius: 1
                    ),
                  ],
                ),
                child: TextField(
                  style: regularText(13),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Under Ground', style: boldText(14),),
              const SizedBox(height: 12,),
              Container(
                width: 320, height: 40,
                padding: const EdgeInsets.only(left: 12, bottom: 2),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                        color: black.withOpacity(.1),
                        spreadRadius: 2,
                        blurRadius: 1
                    ),
                  ],
                ),
                child: TextField(
                  style: regularText(13),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Ground Floor Parking', style: boldText(14),),
              const Divider(thickness: 2,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                    child: RadioListTile(
                      contentPadding: const EdgeInsets.all(0),
                      title: Text('Yes', style: mediumText(15),),
                      value: 'Yes',
                      activeColor: primaryBlue,
                      groupValue: _isRadioSelected,
                      onChanged: (newValue) {
                        _isRadioSelected = newValue!;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: RadioListTile(
                      contentPadding: const EdgeInsets.all(0),
                      title: Text('No', style: mediumText(15),),
                      value: 'No',
                      activeColor: primaryBlue,
                      groupValue: _isRadioSelected,
                      onChanged: (newValue) {
                        _isRadioSelected = newValue!;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: RadioListTile(
                      contentPadding: const EdgeInsets.all(0),
                      title: Text('Partial', style: mediumText(15),),
                      value: 'Partial',
                      activeColor: primaryBlue,
                      groupValue: _isRadioSelected,
                      onChanged: (newValue) {
                        _isRadioSelected = newValue!;
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Establishment Height', style: boldText(14),),
              const SizedBox(height: 12,),
              Container(
                width: 320, height: 40,
                padding: const EdgeInsets.only(left: 12, bottom: 2),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                        color: black.withOpacity(.1),
                        spreadRadius: 2,
                        blurRadius: 1
                    ),
                  ],
                ),
                child: TextField(
                  style: regularText(13),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Plinth Area', style: boldText(14),),
              const SizedBox(height: 12,),
              Container(
                width: 320, height: 40,
                padding: const EdgeInsets.only(left: 12, bottom: 2),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                        color: black.withOpacity(.1),
                        spreadRadius: 2,
                        blurRadius: 1
                    ),
                  ],
                ),
                child: TextField(
                  style: regularText(13),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Total Floor Area', style: boldText(14),),
              const SizedBox(height: 12,),
              Container(
                width: 320, height: 40,
                padding: const EdgeInsets.only(left: 12, bottom: 2),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                        color: black.withOpacity(.1),
                        spreadRadius: 2,
                        blurRadius: 1
                    ),
                  ],
                ),
                child: TextField(
                  style: regularText(13),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Type of Structure', style: boldText(14),),
              const SizedBox(height: 12,),
              Container(
                width: 320, height: 40,
                padding: const EdgeInsets.only(left: 12, bottom: 2, right: 12),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                        color: black.withOpacity(.1),
                        spreadRadius: 2,
                        blurRadius: 1
                    ),
                  ],
                ),
                child: PopupMenuButton<String>(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  itemBuilder: (context) {
                    return list.map((str) {
                      return PopupMenuItem(
                        value: str,
                        child: Text(
                          str,
                          style: mediumText(12, color: grey,),
                        ),
                      );
                    }).toList();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(_currentItemSelected,
                        style: mediumText(12, color: grey,),
                      ),
                      const Icon(
                        Icons.arrow_drop_down,
                        size: 18,
                        color: black,
                      )
                    ],
                  ),
                  onSelected: (v) {
                    _currentItemSelected = v;
                  },
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Foundation Type', style: boldText(14),),
              const SizedBox(height: 12,),
              Container(
                width: 320, height: 40,
                padding: const EdgeInsets.only(left: 12, bottom: 2, right: 12),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                        color: black.withOpacity(.1),
                        spreadRadius: 2,
                        blurRadius: 1
                    ),
                  ],
                ),
                child: PopupMenuButton<String>(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  itemBuilder: (context) {
                    return list.map((str) {
                      return PopupMenuItem(
                        value: str,
                        child: Text(
                          str,
                          style: mediumText(12, color: grey,),
                        ),
                      );
                    }).toList();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(_currentItemSelected,
                        style: mediumText(12, color: grey,),
                      ),
                      const Icon(
                        Icons.arrow_drop_down,
                        size: 18,
                        color: black,
                      )
                    ],
                  ),
                  onSelected: (v) {
                    _currentItemSelected = v;
                  },
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Foundation Designed For', style: boldText(14),),
              const SizedBox(height: 12,),
              Container(
                width: 320, height: 40,
                padding: const EdgeInsets.only(left: 12, bottom: 2),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                        color: black.withOpacity(.1),
                        spreadRadius: 2,
                        blurRadius: 1
                    ),
                  ],
                ),
                child: TextField(
                  style: regularText(13),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}