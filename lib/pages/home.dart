import 'package:flutter/material.dart';
import 'package:pwd_bimh/config/colors.dart';
import 'package:pwd_bimh/config/text_styles.dart';
import 'package:pwd_bimh/pages/home_drawer.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  //=======Basically its the dashboard page=======
  //----------------------------------------------
  //===============variable section===============
  //----------------------------------------------
  List<String> items = ['Admins', 'Executive Engineers', 'Additional Chief',
  'Superintending Engineers', 'Sub Divisional Engineers', 'Assistant Engineers'];

  //===============finction section===============
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: const ImageIcon(
                  AssetImage('assets/icons/menu.png'),
                  color: Colors.white, size: 16,
                ),
                onPressed: (){
                  Scaffold.of(context).openDrawer();
                },
              ),
              Text('Dashboard', style: boldText(16, color: white),)
            ],
          ),
          //==========this part contain profile picture=========
          //-----------------------------------------------------
          const Padding(
            padding: EdgeInsets.only(right: 8),
            child: CircleAvatar(
              radius: 14,
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
              GridView.builder(
                padding: const EdgeInsets.fromLTRB(16,16,16,0),
                shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 12,
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index){
                    return Container(
                      height: 60,
                      margin: const EdgeInsets.only(bottom: 6),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(16),
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
                          const ImageIcon(
                            AssetImage('assets/icons/team.png'),
                            size: 32, color: primaryBlue,
                          ),
                          const SizedBox(height: 6,),
                          Text('0',
                            textAlign: TextAlign.center,
                            style: boldText(24, color: primaryBlue),
                          ),
                          const SizedBox(height: 6,),
                          Text(items[index].toUpperCase(),
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            style: boldText(12, color: primaryBlue),),
                        ],
                      ),
                    );
                  }),
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
