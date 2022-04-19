import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pwd_bimh/config/colors.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pwd_bimh/pages/provider.dart';
import 'package:pwd_bimh/routes/app_routes.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

//==============welcome to pwd bimh project==================
//==============here we initiates some settings==============
//-----------------------------------------------------------

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

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
  runApp(const MyApp());
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      //=========initializer part of bloc and provider===========
      //--------------------------------------------------------

      providers: [
        ChangeNotifierProvider(
          create: (context) => DemoProvider(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: () {
          return const PwdBimh();
        },
      ),
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
    //=========configuration with go_router=============
    //--------------------------------------------------

    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      debugShowCheckedModeBanner: false,
      builder: (context, widget) {
        //=========initialization of screen_util===========
        //-------------------------------------------------

        ScreenUtil.setContext(context);

        ScreenUtil.init(
          const BoxConstraints(
            maxHeight: 690,
            maxWidth: 360,
          ),
          context: context,
          designSize: const Size(360, 690),
        );

        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: widget!,
        );
      },
      theme: ThemeData(
        primarySwatch: const MaterialColor(
          0xFF5B4FFF,
          <int, Color>{
            50: Color(0xFF5B4FFA),
            100: Color(0xFF5B4FFB),
            200: Color(0xFF5B4FFC),
            300: Color(0xFF5B4FFD),
            400: Color(0xFF5B4FFE),
            500: Color(0xFF5B4FFF),
            600: Color(0xFF5B4FFE),
            700: Color(0xFF5B4FFD),
            800: Color(0xFF5B4FFC),
            900: Color(0xFF5B4FFB),
          },
        ),
      ),
    );
  }
}
