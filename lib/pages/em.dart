import 'package:flutter/material.dart';
import 'package:pwd_bimh/config/colors.dart';
import 'package:pwd_bimh/config/text_styles.dart';

class EM extends StatelessWidget {
  EM({Key? key}) : super(key: key);

  //--------------------variables-------------------
  //------------------------------------------------
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('AC No.', style: boldText(14),),
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
                        Text('Total AC Capacity', style: boldText(14),),
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
                        Text('Generator No.', style: boldText(14),),
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
                        Text('Total Generator Capacity', style: boldText(14),),
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
                        Text('Motor/Pump No.', style: boldText(14),),
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
                        Text('Motor/Pump Capacity', style: boldText(14),),
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
                        Text('Substation', style: boldText(14),),
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
                        Text('Total Substation Capacity', style: boldText(14),),
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
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('File Detection System', style: boldText(14),),
              const Divider(thickness: 2,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                    child: RadioListTile(
                      contentPadding: const EdgeInsets.all(0),
                      title: Text('Complete', style: mediumText(15),),
                      value: 'Complete',
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
              Text('File Protection System', style: boldText(14),),
              const Divider(thickness: 2,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                    child: RadioListTile(
                      contentPadding: const EdgeInsets.all(0),
                      title: Text('Complete', style: mediumText(15),),
                      value: 'Complete',
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
              Text('Lift No.', style: boldText(14),),
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
              Text('EM Other Information', style: boldText(14),),
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