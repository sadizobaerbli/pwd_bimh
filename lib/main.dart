import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pwd_bimh/config/colors.dart';
import 'package:pwd_bimh/pages/add_establishment.dart';
import 'package:pwd_bimh/pages/add_establishment_provider.dart';
import 'package:pwd_bimh/pages/home.dart';
import 'pages/establishment_page.dart';
import 'package:provider/provider.dart';

//==============welcome to pwd bimh project==================
//==============here we initiates some settings==============
//-----------------------------------------------------------

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //=========Disabled landscape mode=========
  //-----------------------------------------
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  //==========contains the status and navigation bar settings=======
  //-----------------------------------------------------------------
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: primaryBlue,
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.light,
    ),
  );
  runApp(const MyApp(),);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AddEstablishmentProvider(),),
      ],
      child: const PwdBimh(),
    );
  }
}

class PwdBimh extends StatefulWidget {
  const PwdBimh({Key? key}) : super(key: key);
  @override
  State<PwdBimh> createState() => _PwdBimhState();
}

class _PwdBimhState extends State<PwdBimh> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/addEstablishment',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: const MaterialColor(
            0xFF5B4FFF,
            <int, Color>{
              50:  Color(0xFFe0e0e0),
              100: Color(0xFFb3b3b3),
              200: Color(0xFF808080),
              300: Color(0xFF4d4d4d),
              400: Color(0xFF262626),
              500: Color(0xFF5B4FFF),
              600: Color(0xFF000000),
              700: Color(0xFF000000),
              800: Color(0xFF000000),
              900: Color(0xFF000000),
            },
          ),
        ),
        //==========initiating the core routes here=======
        //------------------------------------------------
        routes: {
          '/': (_) => const HomePage(),
          '/establishment': (_) => EstablishmentPage(),
          '/addEstablishment': (_) => const AddEstablishment(),
        }
    );
  }
}

