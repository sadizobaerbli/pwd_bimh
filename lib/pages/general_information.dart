import 'package:flutter/material.dart';
import 'package:pwd_bimh/config/colors.dart';
import 'package:pwd_bimh/config/text_styles.dart';

class GeneralInformation extends StatelessWidget {
  GeneralInformation({Key? key}) : super(key: key);


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
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Establishment ID', style: semiBoldText(14),),
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
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixText: 'PWD-',
                    prefixStyle: regularText(12),
                  ),
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
              Text('Concerned Ministry', style: semiBoldText(14),),
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
              Text('Establishment Name', style: semiBoldText(14),),
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
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Project Name', style: semiBoldText(14),),
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
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Establishment Category', style: semiBoldText(14),),
              const Divider(thickness: 2,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                    child: RadioListTile(
                      contentPadding: const EdgeInsets.all(0),
                      title: Text('Civil', style: mediumText(15),),
                      value: 'Civil',
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
                      title: Text('Electrical/Mechanical', style: mediumText(15),),
                      value: 'Electrical/Mechanical',
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
                      title: Text('Both', style: mediumText(15),),
                      value: 'Both',
                      groupValue: _isRadioSelected,
                      activeColor: primaryBlue,
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
              Text('Constructed By', style: semiBoldText(14),),
              const Divider(thickness: 2,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                    child: RadioListTile(
                      contentPadding: const EdgeInsets.all(0),
                      title: Text('PWD', style: mediumText(15),),
                      value: 'PWD',
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
                      title: Text('Others', style: mediumText(15),),
                      value: 'Others',
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
              Text('Civil', style: boldText(14),),
              const Divider(thickness: 2,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8,),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0, left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Zone', style: mediumText(14),),
                        const SizedBox(height: 12,),
                        Container(
                          width: 300, height: 40,
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
                    padding: const EdgeInsets.only(bottom: 12.0, left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Circle', style: mediumText(14),),
                        const SizedBox(height: 12,),
                        Container(
                          width: 300, height: 40,
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
                    padding: const EdgeInsets.only(bottom: 12.0, left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Division', style: mediumText(14),),
                        const SizedBox(height: 12,),
                        Container(
                          width: 300, height: 40,
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
                    padding: const EdgeInsets.only(bottom: 12.0, left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Sub Division', style: mediumText(14),),
                        const SizedBox(height: 12,),
                        Container(
                          width: 300, height: 40,
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
              Text('Electrical/Mechanical', style: boldText(14),),
              const Divider(thickness: 2,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8,),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0, left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Zone', style: mediumText(14),),
                        const SizedBox(height: 12,),
                        Container(
                          width: 300, height: 40,
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
                    padding: const EdgeInsets.only(bottom: 12.0, left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Circle', style: mediumText(14),),
                        const SizedBox(height: 12,),
                        Container(
                          width: 300, height: 40,
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
                    padding: const EdgeInsets.only(bottom: 12.0, left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Division', style: mediumText(14),),
                        const SizedBox(height: 12,),
                        Container(
                          width: 300, height: 40,
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
                    padding: const EdgeInsets.only(bottom: 12.0, left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Sub Division', style: mediumText(14),),
                        const SizedBox(height: 12,),
                        Container(
                          width: 300, height: 40,
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
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
