import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../const/color_const.dart';

class InformationWidget extends StatelessWidget {
  String titali;
  String date;
  String imagurl;

  InformationWidget(this.titali, this.date,this.imagurl);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("  Take Your Readings",style: TextStyle(color: ColorConst().secondaryColor,fontWeight: FontWeight.w600,fontSize: 12.sp)),
            Text("Apr 20,2022 | 05:45 AM  ",style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.w300,color: ColorConst().secondaryColor),),
          ],
        ),
         SizedBox(
          height: 8.h,
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorConst().secondaryColor,
            image: DecorationImage( opacity: 180,image: NetworkImage('${imagurl}'),fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Padding(
            padding:  EdgeInsets.only(top: 35.h,bottom: 35.h),
            child: Column(
              children: [

                Text("Please Take Your",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15.sp),),
                Text("READINGS",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 25.sp),),

              ],
            ),
          ),

        ),
      ],
    );
  }


}
