
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthmote/const/color_const.dart';

class AbnormalWidgetView extends StatelessWidget {
  String titali;

  AbnormalWidgetView(this.titali, this.notificationdatetime, this.name,
      this.dattime, this.mmhg, this.bpm);

  String notificationdatetime;
  String name;
  String dattime;
  String mmhg;
  String bpm;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("  ${titali}",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600,color: ColorConst().secondaryColor),),
            Text("${notificationdatetime}  ",style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.w300,color: ColorConst().secondaryColor),),
          ],
        ),
        SizedBox(
          height: 8.h,
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorConst().lightgrey,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Container(
                margin: EdgeInsets.only(left: 15.w,right: 15.w),
                child: Divider(
                  height: 2.h,
                  color: ColorConst().grey,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                margin: EdgeInsets.only(left: 15.w,right: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${name}",
                            style:  TextStyle(
                                fontWeight: FontWeight.w600,
                                color: ColorConst().secondaryColor,
                                fontSize: 13.sp)),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          "${dattime}",
                          style:  TextStyle(
                              fontSize: 10.sp,
                              color: ColorConst().secondaryColor,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 15.sp,
                        ),
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
                                      text:
                                      '${mmhg}',
                                      style:  TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: ColorConst().secondaryColor,
                                          fontSize: 15.sp)),
                                  TextSpan(
                                      text: ' (mmhG)',
                                      style: TextStyle(
                                          fontSize: 6.sp, color: ColorConst().secondaryColor,fontWeight: FontWeight.w300)),
                                ],
                              )),
                          SizedBox(
                            width: 8.sp,
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
                                            text:
                                            '${bpm}',
                                            style:  TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color:ColorConst().secondaryColor,
                                                fontSize: 15.sp)),
                                        TextSpan(
                                            text: ' (BPM)',
                                            style: TextStyle(
                                                fontSize: 6,
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
              ),
              Container(
                margin: EdgeInsets.only(left: 15.w,right: 15.w),
                child: Divider(
                  height: 2.h,
                  color: ColorConst().grey,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
