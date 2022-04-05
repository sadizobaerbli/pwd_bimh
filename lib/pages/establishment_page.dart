import 'package:flutter/material.dart';
import 'package:pwd_bimh/config/colors.dart';
import 'package:pwd_bimh/config/text_styles.dart';

class EstablishmentPage extends StatelessWidget {
  final String? title;
  EstablishmentPage({Key? key, this.title}) : super(key: key);

  //====================variables=================
  //----------------------------------------------
  final List<String> keys = ['Building Id', 'Building Name',
    'Concerned Ministry', 'Uses of building', 'PWD Division', 'Project Name'];

  final List<String> values = ['PWD-102212221', 'Turag Thana Building',
    'Ministry of Home Affairs', '-----', 'Mohakhali PWD Division',
    'Construction of 101 dilapitaded thana for police department'];

  //====================Functions=================
  //----------------------------------------------
  _cardItem({String? key, String? value}){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              flex: 2,
              child: Text(key!, style: semiBoldText(13),),),
          const SizedBox(width: 12,),
          Expanded(
              flex: 3,
              child: Text(value!, style: regularText(12),),),
        ],
      ),
    );
  }

  _card(){
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.blueGrey.withOpacity(.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: List.generate(keys.length,
              (index) => _cardItem(
              key: keys[index], value: values[index]),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: primaryBlue,
        title: Text(title!,
        style: extraBoldText(18, color: Colors.white),),
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.fromLTRB(12,12,12,46),
            children: List.generate(3, (index) => _card(),
             ),
          ),
          Positioned(
            bottom: 0, left: 0, right: 0,
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/addEstablishment');
              },
              child: Container(
                height: 46, width: double.infinity,
                color: primaryBlue,
                child: Center(
                  child: Text('ADD NEW ESTABLISHMENT',
                  style: boldText(13, color: Colors.white),),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
