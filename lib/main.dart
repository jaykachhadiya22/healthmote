import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthmote/ui/screens/welcomescreen/welcomescreen_view.dart';


void main() {

  runApp(
    MyApp()
    // DevicePreview(
    //   enabled: true,
    //   builder: (context) => MyApp(), // Wrap your app
    // ),
  );

  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_){
    // runApp( MaterialApp(
    //   title: 'custom fonts',
    //   theme: ThemeData(fontFamily: 'Poppins'),
    //   home: WelComeScreenView(),
    //   debugShowCheckedModeBanner: false,
    // )
    // );

 });
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //systemNavigationBarColor: Colors.blue, // navigation bar color
    statusBarColor: Color(0XFFD6D6D6), // status bar color
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)

    return ScreenUtilInit(
      designSize:  const Size(375, 667),
      builder: (ctx, child) {
        // child = DevicePreview.appBuilder(context,child);
        return MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder:(context,child){
            child = DevicePreview.appBuilder(context,child);
            return child;
            },
          debugShowCheckedModeBanner: false,
          // You can use the library anywhere in the app even in theme
          title: 'custom fonts',
          theme: ThemeData(fontFamily: 'Poppins'),
          home: child,
        );
      },
      child: WelComeScreenView(),
    );
  }
}
