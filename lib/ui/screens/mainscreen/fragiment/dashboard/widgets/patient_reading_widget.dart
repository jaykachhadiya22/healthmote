import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../../../../class/latestreadingmodal.dart';
import '../../../../../../const/color_const.dart';
import '../../../../patient/patient_view.dart';



class PatientReading extends StatelessWidget {

  List<LatestReadingModal> latestreading1;

  PatientReading(this.latestreading1);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0X5FF9F9F9),
          body: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Expanded(
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    child: Card(
                      color: Colors.white,
                      elevation: 2,
                      margin: EdgeInsets.all(0.w),
                      shadowColor: backgroundcolor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.r),
                          topRight: Radius.circular(10.r),
                        ),
                      ),
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: latestreading1.length,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) =>
                            SingleListItem1(latestreading1[index]),
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
                  )),
            ],
          ),
        ));
  }
}


class SingleListItem1 extends StatelessWidget {

  LatestReadingModal latestreading1;

  SingleListItem1(this.latestreading1);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return PatientView();
        },));
      },
      child: Container(
        margin: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.w, bottom: 10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${latestreading1.Name}",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: ColorConst().secondaryColor,
                        fontSize: 13.sp)),
                 SizedBox(
                  height: 2.h,
                ),
                Text(
                  "${latestreading1.Date}",
                  style: TextStyle(
                      fontSize: 10.sp,
                      color: ColorConst().secondaryColor,
                      fontWeight: FontWeight.w300),
                )
              ],
            ),
            Container(
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(
                        style: DefaultTextStyle
                            .of(context)
                            .style,
                        children: <TextSpan>[
                          TextSpan(
                              text:
                              '${latestreading1.sgps}',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: ColorConst().secondaryColor,
                                  fontSize: 15.sp)),
                          TextSpan(
                              text: ' (mmhG)',
                              style: TextStyle(
                                  fontSize: 6.sp, color: ColorConst()
                                  .secondaryColor, fontWeight: FontWeight
                                  .w300)),
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
                        const SizedBox(
                          width: 8,
                        ),
                        RichText(
                            text: TextSpan(
                              style: DefaultTextStyle
                                  .of(context)
                                  .style,
                              children: <TextSpan>[
                                TextSpan(
                                    text:
                                    '${latestreading1.pgps}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: ColorConst().secondaryColor,
                                        fontSize: 15.sp)),
                                TextSpan(
                                    text: ' (BPM)',
                                    style: TextStyle(
                                        fontSize: 6.sp,
                                        color: ColorConst().secondaryColor,
                                        fontWeight: FontWeight.w300)),
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
    );
  }
}
