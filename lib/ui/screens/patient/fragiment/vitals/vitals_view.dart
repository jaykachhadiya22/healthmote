import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:healthmote/class/vitalsmodal.dart';

import '../../../../../const/color_const.dart';



class VitalsView extends StatelessWidget {
  VitalsView({Key? key}) : super(key: key);

  VtialsModal v =
      VtialsModal(Datetime: 'Apr 20,2022 | 06:05 AM', mmhg: '99/74', bpm: '54');
  VtialsModal v1 =
      VtialsModal(Datetime: 'Apr 20,2022 | 06:05 AM', mmhg: '99/74', bpm: '54');
  VtialsModal v2 =
      VtialsModal(Datetime: 'Apr 20,2022 | 06:05 AM', mmhg: '99/74', bpm: '54');
  VtialsModal v3 =
      VtialsModal(Datetime: 'Apr 20,2022 | 06:05 AM', mmhg: '99/74', bpm: '54');
  VtialsModal v4 =
      VtialsModal(Datetime: 'Apr 20,2022 | 06:05 AM', mmhg: '99/74', bpm: '54');
  VtialsModal v5 =
      VtialsModal(Datetime: 'Apr 20,2022 | 06:05 AM', mmhg: '99/74', bpm: '54');
  VtialsModal v6 =
      VtialsModal(Datetime: 'Apr 20,2022 | 06:05 AM', mmhg: '99/74', bpm: '54');
  VtialsModal v7 =
      VtialsModal(Datetime: 'Apr 20,2022 | 06:05 AM', mmhg: '99/74', bpm: '54');
  VtialsModal v8 =
      VtialsModal(Datetime: 'Apr 20,2022 | 06:05 AM', mmhg: '99/74', bpm: '54');
  VtialsModal v9 =
      VtialsModal(Datetime: 'Apr 20,2022 | 06:05 AM', mmhg: '99/74', bpm: '54');

  @override
  Widget build(BuildContext context) {
    List<VtialsModal> vtials = [v, v1, v2, v3, v4, v5, v6, v7, v8, v9];

    double theight = MediaQuery.of(context).size.height;
    double appbarhghite = kToolbarHeight;
    double statsbarhghite = MediaQuery.of(context).padding.top;
    double navgatoinbar = MediaQuery.of(context).padding.bottom;

    theight = theight - appbarhghite - statsbarhghite - navgatoinbar;
    return SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0X5FF9F9F9),
      body: Column(
        children: [
           SizedBox(
            height: 20.h,
          ),
          SizedBox(
            height: theight * 0.43.h,
            width: double.infinity,
            child: Card(
              margin: EdgeInsets.all(0.w),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Expanded(
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: vtials.length,
                      physics:BouncingScrollPhysics(),
                      itemBuilder: (context, index) =>
                          SingalListIteam(vtials[index]),
                      separatorBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: EdgeInsets.only(left: 20.w, right: 20.w),
                          child:  Divider(
                            height: 5.h,
                            color: Colors.black12,
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            ),
          ),
           SizedBox(
            height: 20.h,
          ),
          Expanded(
            child: SizedBox(

              width: double.infinity,
              child: ListView.builder( physics: const BouncingScrollPhysics(),itemCount: 1,itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: 30.w,right: 30.w,top: 15.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text("Blood Pressure",style: TextStyle(fontWeight: FontWeight.w600,color: ColorConst().secondaryColor,fontSize: 14.sp),),
                          SizedBox(
                            height: theight*0.25.h,
                          ),
                      ],
                    ),
                  ),
                );
              },),
            ),
          ),
        ],
      ),
    ));
  }
}

class SingalListIteam extends StatelessWidget {
  VtialsModal vtial;

  SingalListIteam(this.vtial);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.w, bottom: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${vtial.Datetime}",
                style:  TextStyle(
                    fontSize: 10.sp,
                    color: ColorConst().secondaryColor,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
          Container(
            child: Row(
              children: [
                RichText(
                    text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                        text: '${vtial.mmhg}',
                        style:  TextStyle(
                            fontWeight: FontWeight.w600,
                            color:ColorConst().secondaryColor,
                            fontSize: 15.sp)),
                     TextSpan(
                        text: ' (mmhG)',
                        style: TextStyle(
                            fontSize: 6.sp,
                            color: ColorConst().secondaryColor,fontWeight: FontWeight.w300)),
                  ],
                )),
                 SizedBox(
                  width: 8.w,
                ),
                IntrinsicHeight(
                  child: Row(
                    children: [
                       VerticalDivider(
                        color: Colors.black12,
                        thickness: 2,
                        width: 1.w,
                      ),
                       SizedBox(
                        width: 8.w,
                      ),
                      RichText(
                          text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                              text: '${vtial.bpm}',
                              style:  TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color:ColorConst().secondaryColor,
                                  fontSize: 15.sp)),
                           TextSpan(
                              text: ' (BPM)',
                              style: TextStyle(
                                  fontSize: 6.sp,
                                  color: ColorConst().secondaryColor,fontWeight: FontWeight.w300)),
                        ],
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
