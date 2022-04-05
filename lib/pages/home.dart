import 'package:flutter/material.dart';
import 'package:pwd_bimh/config/colors.dart';
import 'package:pwd_bimh/config/text_styles.dart';
import 'package:pwd_bimh/pages/home_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  //=======Basically its the dashboard page=======
  //----------------------------------------------
  //===============function section===============
  //----------------------------------------------
  Container _appBar(BuildContext context){
    return Container(
      padding: const EdgeInsets.only(top: 28,bottom: 4),
      color: primaryBlue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //==========custom menu icon from flatIcon========
          //------------------------------------------------
          IconButton(
            icon: const ImageIcon(
              AssetImage('assets/icons/menu.png'),
              color: Colors.white, size: 18,
            ),
            onPressed: (){
              Scaffold.of(context).openDrawer();
            },
          ),
          //==========this part contain profile picture=========
          //-----------------------------------------------------
          const Padding(
            padding: EdgeInsets.only(right: 8),
            child: CircleAvatar(
              radius: 16,
              backgroundImage: AssetImage('assets/images/user_image.png'),
            ),
          ),
        ],
      ),
    );
  }

  //============build starts from here=============
  //-----------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Builder(
        builder: (context){
          return Column(
            children: [
              _appBar(context),
              Expanded(
                child: Center(
                  child: Text('No results to show!',
                    style: mediumText(14),),
                ),
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
