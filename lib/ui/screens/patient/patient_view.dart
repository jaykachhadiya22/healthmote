import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'package:healthmote/ui/widgets/custom_appbar.dart';

import '../../../const/color_const.dart';
import 'fragiment/care_plan/care_plan_view.dart';
import 'fragiment/care_team/care_team_view.dart';
import 'fragiment/demo/demo_view.dart';
import 'fragiment/noties/notes_view.dart';
import 'fragiment/vitals/vitals_view.dart';




Color backgroundcolor = Color(0XFFD6D6D6);
Color primarycolor = Color(0xFF37474F);
Color secendarycolor = Color(0XFFD6D6D6);

class PatientView extends StatelessWidget {
  const PatientView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: SafeArea(
          child: Scaffold(
        appBar: CustomAppBar(
              title: Text('Jenny Doe',style: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.w600,
                color: primarycolor,
                letterSpacing: 0.6,
              )),
        appBar: AppBar(),
        widgets: <Widget>[Padding(
          padding: EdgeInsets.only(right: 20.w),
          child: Container(
            margin: EdgeInsets.only(top: 5.w),
            height: 50.h,
            width: 45.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage("asset/image/appbar_image.jpg"),fit: BoxFit.cover),
            ),
          ),
        )],
      ),
        body: Column(
          children: [
            SizedBox(
              height: 12.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 12.w,right: 12.w),
              height: 35.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
               borderRadius: BorderRadius.circular(10.r),
              ),
              child: TabBar(
                  unselectedLabelColor: Colors.black54,
                  indicatorColor: Colors.white,
              //  isScrollable: true,
                  indicator: BoxDecoration(
                    color: ColorConst().secondaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  tabs: [
                    SingleTabItem("Vitals"),
                    SingleTabItem("Notes"),
                    SingleTabItem("Demo"),
                    SingleTabItem("Care Team"),
                    SingleTabItem("Care Plan"),

              ]),
            ),
            Expanded(
              child: TabBarView(children: [
                VitalsView(),
                NotesView(),
                DemoView(),
                CareTeamView(),
                CarePlanView(),
              ]),
            ),

          ],
        ),
      )),
    );
  }
}

class SingleTabItem extends StatelessWidget {

  String tabName;
  SingleTabItem(this.tabName);

  @override
  Widget build(BuildContext context) {
    return Tab(
        child: Text(
          tabName,
          style:  TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w500),
        ));
  }
}
