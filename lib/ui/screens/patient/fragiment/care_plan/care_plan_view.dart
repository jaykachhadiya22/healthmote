
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../const/color_const.dart';



class CarePlanView extends StatelessWidget {
  const CarePlanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
    //  backgroundColor: backgroundcolor,
      body: Column(
        children:  [
           SizedBox(
            height: 20.h,
          ),
          Expanded(
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Card(
                  margin: const EdgeInsets.all(0),
                  shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.r),
                      topRight: Radius.circular(10.r),
                    ),
                  ),
                  child:Expanded(
                    child: ListView.builder(itemCount: 1, physics: const BouncingScrollPhysics(),itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(left: 15.w,right: 15.w),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 25.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10.w),
                                  child: Row(
                                    children: [
                                      Text("Status",style: TextStyle(fontSize: 12.sp.sp,color: ColorConst().secondaryColor,fontWeight: FontWeight.w600),),
                                      SizedBox(
                                        width: 1.w,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          color:ColorConst().secondaryColor,
                                        ),
                                        child: Text("  in Progress  ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 12.sp.sp)),
                                      ),
                                    ],
                                  ),
                                ),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(

                                      children: [

                                        SingalRichTextCare("Changed Date : ", "Apr 20,2022"),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SingalRichTextCare("Changed By : ", "Estefania Lazaia"),
                                      ],
                                    ),

                                  ],
                                ),

                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: ColorConst().lightgrey,
                              ),
                              child: Container(
                                margin: EdgeInsets.only(left: 12.sp.w,bottom: 15.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:   [
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Text("Chronic Condition",style: TextStyle(fontSize: 14.sp,color:   ColorConst().secondaryColorligh,fontWeight: FontWeight.w700)),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Text("Diabetes",style: TextStyle(fontWeight: FontWeight.w500,color:  ColorConst().secondaryColorligh,fontSize: 14.sp)),

                                    Text("Heart Failure",style: TextStyle(fontWeight: FontWeight.w500,color:  ColorConst().secondaryColorligh,fontSize: 14.sp)),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color:ColorConst().lightgrey,

                              ),
                              child: Container(
                                margin: EdgeInsets.only(left: 12.sp.w,right: 15.w,bottom: 15.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:  [
                                    SizedBox(
                                      height: 10.h,
                                    ),

                                    Text("Other Specialists & Services",style: TextStyle(fontSize: 14.sp,color:   ColorConst().secondaryColorligh,fontWeight: FontWeight.w700)),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Text("Contacts Of Other Specialists & Services",style: TextStyle(fontWeight: FontWeight.w700,color:   ColorConst().secondaryColorligh,fontSize: 14.sp)),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children:  [
                                        Flexible(child: Text("Specialist : Needs Update ",style: TextStyle(fontWeight: FontWeight.w500,color:   ColorConst().secondaryColorligh,fontSize: 14.sp))),
                                        Flexible(child: Text("Surgery : Needs Update",style: TextStyle(fontWeight: FontWeight.w500,color:   ColorConst().secondaryColorligh,fontSize: 14.sp))),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: ColorConst().lightgrey,
                              ),
                              child: Container(
                                margin: EdgeInsets.only(left: 12.sp.w,bottom: 15.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:   [
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Text("Problem List",style: TextStyle(fontSize: 14.sp,color: ColorConst().secondaryColorligh,fontWeight: FontWeight.w700)),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Text("What are Some of the Problems?",style: TextStyle(fontWeight: FontWeight.w700,color:  ColorConst().secondaryColorligh,fontSize: 14.sp)),
                                    Text("Other iron deficiency anemias",style: TextStyle(fontWeight: FontWeight.w500,color:  ColorConst().secondaryColorligh,fontSize: 14.sp)),
                                    Text("Anorexia",style: TextStyle(fontWeight: FontWeight.w500,color:ColorConst().secondaryColorligh,fontSize: 14.sp)),
                                    Text("Abnormal Weight Loss",style: TextStyle(fontWeight: FontWeight.w500,color:  ColorConst().secondaryColorligh,fontSize: 14.sp)),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },),
                  ),
                ),
            ),
          ),
        ],
      )
    ));
  }
}

class SingalRichTextCare extends StatelessWidget {
  String changedat;

  SingalRichTextCare(this.changedat, this.surgery);

  String surgery;

  @override
  Widget build(BuildContext context) {
    return   RichText(text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children:  <TextSpan>[
          TextSpan(
              text:
              changedat,
              style:   TextStyle(
                  fontWeight: FontWeight.w500,
                  color: ColorConst().secondaryColor,
                  fontSize: 12.sp)),
          TextSpan(
              text:
              surgery,
              style:   TextStyle(
                  fontWeight: FontWeight.w400,
                  color: ColorConst().secondaryColorligh,
                  fontSize: 11.sp.sp)),
        ]
    ));
  }
}

