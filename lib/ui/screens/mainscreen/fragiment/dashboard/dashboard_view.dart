import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healthmote/class/latestreadingmodal.dart';
import 'package:healthmote/ui/screens/mainscreen/fragiment/dashboard/widgets/patient_reading_widget.dart';

import 'package:healthmote/ui/widgets/custom_appbar.dart';

import '../../../../../const/color_const.dart';



class DashboardView extends StatelessWidget {
  LatestReadingModal l = LatestReadingModal(
      Name: 'John Doe',
      Date: 'Apr 20,2022 | 06:25 Am',
      sgps: '99 / 74',
      pgps: '54');
  LatestReadingModal l1 = LatestReadingModal(
      Name: 'John Doe',
      Date: 'Apr 20,2022 | 06:25 Am',
      sgps: '99 / 74',
      pgps: '54');
  LatestReadingModal l2 = LatestReadingModal(
      Name: 'John Doe',
      Date: 'Apr 20,2022 | 06:25 Am',
      sgps: '99 / 74',
      pgps: '54');
  LatestReadingModal l3 = LatestReadingModal(
      Name: 'John Doe',
      Date: 'Apr 20,2022 | 06:25 Am',
      sgps: '99 / 74',
      pgps: '54');
  LatestReadingModal l4 = LatestReadingModal(
      Name: 'John Doe',
      Date: 'Apr 20,2022 | 06:25 Am',
      sgps: '99 / 74',
      pgps: '54');
  LatestReadingModal l5 = LatestReadingModal(
      Name: 'John Doe',
      Date: 'Apr 20,2022 | 06:25 Am',
      sgps: '99 / 74',
      pgps: '54');
  LatestReadingModal l6 = LatestReadingModal(
      Name: 'John Doe',
      Date: 'Apr 20,2022 | 06:25 Am',
      sgps: '99 / 74',
      pgps: '54');
  LatestReadingModal l7 = LatestReadingModal(
      Name: 'John Doe',
      Date: 'Apr 20,2022 | 06:25 Am',
      sgps: '99 / 74',
      pgps: '54');
  LatestReadingModal l8 = LatestReadingModal(
      Name: 'John Doe',
      Date: 'Apr 20,2022 | 06:25 Am',
      sgps: '99 / 74',
      pgps: '54');
  LatestReadingModal l9 = LatestReadingModal(
      Name: 'John Doe',
      Date: 'Apr 20,2022 | 06:25 Am',
      sgps: '99 / 74',
      pgps: '54');
  LatestReadingModal l10 = LatestReadingModal(
      Name: 'John Doe',
      Date: 'Apr 20,2022 | 06:25 Am',
      sgps: '99 / 74',
      pgps: '54');
  LatestReadingModal l11 = LatestReadingModal(
      Name: 'John Doe',
      Date: 'Apr 20,2022 | 06:25 Am',
      sgps: '99 / 74',
      pgps: '54');
  LatestReadingModal l12 = LatestReadingModal(
      Name: 'John Doe',
      Date: 'Apr 20,2022 | 06:25 Am',
      sgps: '99 / 74',
      pgps: '54');
  LatestReadingModal l13 = LatestReadingModal(
      Name: 'John Doe',
      Date: 'Apr 20,2022 | 06:25 Am',
      sgps: '99 / 74',
      pgps: '54');
  LatestReadingModal l14 = LatestReadingModal(
      Name: 'John Doe',
      Date: 'Apr 20,2022 | 06:25 Am',
      sgps: '99 / 74',
      pgps: '54');
  LatestReadingModal l15 = LatestReadingModal(
      Name: 'John Doe',
      Date: 'Apr 20,2022 | 06:25 Am',
      sgps: '99 / 74',
      pgps: '54');

  List<LatestReadingModal> latestreading1 = [];

  LatestReadingModal a = LatestReadingModal(
      Name: 'Jenny Doe',
      Date: 'Apr 20,2022 | 06:05 AM',
      sgps: '99 / 74',
      pgps: '54');
  LatestReadingModal a1 = LatestReadingModal(
      Name: 'Jenny Doe',
      Date: 'Apr 20,2022 | 06:05 AM',
      sgps: '99 / 74',
      pgps: '54');
  LatestReadingModal a2 = LatestReadingModal(
      Name: 'Jenny Doe',
      Date: 'Apr 20,2022 | 06:05 AM',
      sgps: '99 / 74',
      pgps: '54');
  LatestReadingModal a3 = LatestReadingModal(
      Name: 'Jenny Doe',
      Date: 'Apr 20,2022 | 06:05 AM',
      sgps: '99 / 74',
      pgps: '54');
  LatestReadingModal a4 = LatestReadingModal(
      Name: 'Jenny Doe',
      Date: 'Apr 20,2022 | 06:05 AM',
      sgps: '99 / 74',
      pgps: '54');
  LatestReadingModal a5 = LatestReadingModal(
      Name: 'Jenny Doe',
      Date: 'Apr 20,2022 | 06:05 AM',
      sgps: '99 / 74',
      pgps: '54');
  LatestReadingModal a6 = LatestReadingModal(
      Name: 'Jenny Doe',
      Date: 'Apr 20,2022 | 06:05 AM',
      sgps: '99 / 74',
      pgps: '54');
  LatestReadingModal a7 = LatestReadingModal(
      Name: 'Jenny Doe',
      Date: 'Apr 20,2022 | 06:05 AM',
      sgps: '99 / 74',
      pgps: '54');
  LatestReadingModal a8 = LatestReadingModal(
      Name: 'Jenny Doe',
      Date: 'Apr 20,2022 | 06:05 AM',
      sgps: '99 / 74',
      pgps: '54');
  LatestReadingModal a9 = LatestReadingModal(
      Name: 'Jenny Doe',
      Date: 'Apr 20,2022 | 06:05 AM',
      sgps: '99 / 74',
      pgps: '54');
  LatestReadingModal a10 = LatestReadingModal(
      Name: 'Jenny Doe',
      Date: 'Apr 20,2022 | 06:05 AM',
      sgps: '99 / 74',
      pgps: '54');
  LatestReadingModal a11 = LatestReadingModal(
      Name: 'Jenny Doe',
      Date: 'Apr 20,2022 | 06:05 AM',
      sgps: '99 / 74',
      pgps: '54');
  LatestReadingModal a12 = LatestReadingModal(
      Name: 'Jenny Doe',
      Date: 'Apr 20,2022 | 06:05 AM',
      sgps: '99 / 74',
      pgps: '54');
  LatestReadingModal a13 = LatestReadingModal(
      Name: 'Jenny Doe',
      Date: 'Apr 20,2022 | 06:05 AM',
      sgps: '99 / 74',
      pgps: '54');
  LatestReadingModal a14 = LatestReadingModal(
      Name: 'Jenny Doe',
      Date: 'Apr 20,2022 | 06:05 AM',
      sgps: '99 / 74',
      pgps: '54');
  LatestReadingModal a15 = LatestReadingModal(
      Name: 'Jenny Doe',
      Date: 'Apr 20,2022 | 06:05 AM',
      sgps: '99 / 74',
      pgps: '54');
  List<LatestReadingModal> abnormalreading2 = [];

  @override
  Widget build(BuildContext context) {
    latestreading1 = [
      l,
      l1,
      l2,
      l3,
      l4,
      l5,
      l6,
      l7,
      l8,
      l9,
      l10,
      l11,
      l12,
      l13,
      l14,
      l15
    ];

    abnormalreading2 = [
      a,
      a1,
      a2,
      a3,
      a4,
      a5,
      a6,
      a7,
      a8,
      a9,
      a10,
      a11,
      a12,
      a13,
      a14,
      a15
    ];
    return DefaultTabController(
      length: 2,
      child: SafeArea(
          child: Scaffold(
        backgroundColor: Color(0X5FF9F9F9),
        appBar: CustomAppBar(
          title: Text('DASHBOARD',
              style: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.w700,
                color: ColorConst().secondaryColor,
                letterSpacing: 0.6,
              )),
          appBar: AppBar(),
          widgets: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: Container(
                margin: EdgeInsets.only(top: 5.w),
                height: 50.h,
                width: 45.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("asset/image/appbar_image.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              //  height: 30,
              padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 8.w),
              child: TextFormField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  fillColor: Color(0XFFE5E5E5),
                  filled: true,
                  hintText: "Search Patients",
                  hintStyle: TextStyle(
                    color: Color(0X993C3C34),
                  ),
                  prefixIcon: Container(
                    // alignment: Alignment.centerLeft,
                   margin: EdgeInsets.only(left: 10.w),
                    child:  SvgPicture.asset('asset/image/search_icon_image.svg'),padding: EdgeInsets.all(9.w),height: 35.w,width: 35.w, //
                  ),
                  //border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(style: BorderStyle.none, width: 0.w),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 0, style: BorderStyle.none),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  contentPadding: EdgeInsets.all(0),
                ),
              ),
            ),
             const SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Container(
                height: 35.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: TabBar(
                    unselectedLabelColor: Colors.black54,
                    indicatorColor: Colors.white,
                    indicator: BoxDecoration(
                      color: ColorConst().secondaryColor,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    tabs:  [
                      Tab(
                          child: Text(
                        "Latest Reading",
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w500),
                      )),
                      Tab(
                          child: Text(
                        "Abnormal Reading",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14.sp),
                      )),
                    ]),
              ),
            ),
            Expanded(

              child: TabBarView(children: [
                PatientReading(latestreading1),
                PatientReading(abnormalreading2),
              ]),
            ),
          ],
        ),
      )),
    );
  }
}
