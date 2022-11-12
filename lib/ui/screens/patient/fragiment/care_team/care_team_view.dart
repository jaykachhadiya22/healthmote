import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../const/color_const.dart';



class CareTeamView extends StatelessWidget {
  const CareTeamView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
         //   backgroundColor: backgroundcolor,
            body: Column(
              children: [
                 SizedBox(
                  height: 20.h,
                ),
                Expanded(
                    child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: Card(
                    margin: EdgeInsets.all(0),
                    shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.r),
                        topRight: Radius.circular(10.r),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 15.w, right: 15.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 25.h,
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 10.w),
                              child: Text(
                                "Mariam Potter",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: ColorConst().secondaryColor,
                                    fontWeight: FontWeight.w600),
                              )),
                          SizedBox(
                            height: 2.h,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: ColorConst().lightgrey,
                            ),
                            child: Container(
                              margin: EdgeInsets.only(left: 12.w, top: 15.w,bottom: 20.w),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Text(
                                    "Cell Phone No :",
                                    style: TextStyle(
                                        color: ColorConst().secondaryColorligh,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 13.sp),
                                  ),
                                   SizedBox(
                                    height: 3.h,
                                  ),
                                  Row(
                                    children: [
                                      SingalRichText(
                                          'Email : ', 'miriam@email.com'),
                                    ],
                                  ),
                                   SizedBox(
                                    height: 3.h,
                                  ),
                                  Row(
                                    children: [
                                      SingalRichText(
                                          'Care Coach : ', 'Primary'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                           SizedBox(
                            height: 25.h,
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 10.w),
                              child:  Text(
                                "Jessica Jane",
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    color: ColorConst().secondaryColor,
                                    fontWeight: FontWeight.w700),
                              )),
                           SizedBox(
                            height: 2.h,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color:ColorConst().lightgrey,
                            ),
                            child: Container(
                              margin: EdgeInsets.only(left: 12.w, top: 20.w,bottom: 15.w),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SingalRichText(
                                          'Cell Phone No : ', '+1 1234567891'),
                                    ],
                                  ),
                                   SizedBox(
                                    height: 3.h,
                                  ),
                                  Row(
                                    children: [
                                      SingalRichText(
                                          'Email : ', 'Jessica@email.com'),
                                    ],
                                  ),
                                   SizedBox(
                                    height: 3.h,
                                  ),
                                  Row(
                                    children: [
                                      SingalRichText(
                                          'Coach : ', 'Other'),
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
              ],
            )));
  }
}
class SingalRichText extends StatelessWidget {
  String text;

  SingalRichText(this.text, this.textspan);

  String textspan;

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
          TextSpan(
              text: text,
              style:  TextStyle(
                  fontWeight: FontWeight.w700,
                  color: ColorConst().secondaryColorligh,
                  fontSize: 14.sp)),
          TextSpan(
              text: textspan,
              style:  TextStyle(
                  fontWeight: FontWeight.w400,
                  color:ColorConst().secondaryColorligh,
                  fontSize: 13.sp)),
        ]));
  }
}
