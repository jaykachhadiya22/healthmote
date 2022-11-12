


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../const/color_const.dart';
import 'fragiment/dashboard/dashboard_view.dart';
import 'fragiment/notification/notification_view.dart';
import 'fragiment/patient/patient_view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  final screen=[DashboardView(),PatientView(),NotificationView()];
  int currentindex=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: screen[currentindex],
          bottomNavigationBar: BottomNavigationBar(
              iconSize: 25.w,
              selectedItemColor:ColorConst().secondaryColor,
              //type: BottomNavigationBarType.fixed,
              currentIndex: currentindex,
              unselectedLabelStyle: TextStyle(fontSize: 11.sp),
              onTap: (index)=>setState(()=> currentindex=index),
              items:  [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Dashboard",
                  //  backgroundColor: Colors.deepPurpleAccent,

                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.format_list_bulleted),

                  label: 'patient list',
                  //  backgroundColor: Colors.deepPurpleAccent,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.notifications),
                  label: 'notification',
                  //   backgroundColor: Colors.deepPurpleAccent,
                ),
              ]),
        )
    );
  }
}
