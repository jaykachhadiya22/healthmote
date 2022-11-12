import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthmote/const/color_const.dart';


class MessageWidgetView extends StatelessWidget {
  String tital;

  MessageWidgetView(this.tital, this.datetime, this.ans, this.notes);

  String datetime;
  String ans;
  String notes;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("  ${tital}",
                style: TextStyle(
                    color: ColorConst().secondaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp)),
            Text(
              "${datetime}  ",
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                  color: ColorConst().secondaryColor),
            ),
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
          child: Padding(
            padding: EdgeInsets.only(left: 15.w, right: 10.w, bottom: 10.w),
            child: Column(
              children: [
                 SizedBox(
                  height: 10.h,
                ),
                RichText(
                    text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                      TextSpan(
                          text: notes,
                          style:  TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0X99023246),
                              fontSize: 14.sp)),
                      TextSpan(
                          text: ans,
                          style:  TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                              fontSize: 12.sp)),
                    ])),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
