import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../const/color_const.dart';


class DemoView extends StatelessWidget {
  const DemoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
    //  backgroundColor: backgroundcolor,
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
                child: Expanded(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Container(
                      margin: EdgeInsets.only(left: 15.w, right: 15.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           SizedBox(
                            height: 25.h,
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 8.w),
                              child:  Text(
                                "Personal Info",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: ColorConst().secondaryColor),
                              )),
                           SizedBox(
                            height: 10.h,
                          ),
                           Divider(
                            height: 2.h,
                            color: Colors.black54,
                          ),
                           SizedBox(
                            height: 20.h,
                          ),
                         SingalContainerText("Prefix"),
                           SizedBox(
                            height: 5.h,
                          ),
                          SingalTextFild("Mr."),
                           SizedBox(
                            height: 20.h,
                          ),
                          SingalContainerText("First Name*"),
                           SizedBox(
                            height: 5.h,
                          ),
                          SingalTextFild("Jenny"),

                           SizedBox(
                            height: 20.h,
                          ),
                          SingalContainerText("MI"),
                           SizedBox(
                            height: 5.h,
                          ),
                          SingalTextFild(""),


                           SizedBox(
                            height: 20.h,
                          ),
                          SingalContainerText("Last Name*"),
                           SizedBox(
                            height: 5.h,
                          ),
                          SingalTextFild("Doe"),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class SingalTextFild extends StatelessWidget {

  String Textfildname;

  SingalTextFild(this.Textfildname);

  @override
  Widget build(BuildContext context) {
    return  TextField(
      enabled: false,
      decoration: InputDecoration(
        //focusColor: Colors.black26,
        fillColor: ColorConst().grey,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        prefixIcon: Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 15.w),
            child: Text(Textfildname,
                style:  TextStyle(
                    color: ColorConst().secondaryColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600))),
        contentPadding: EdgeInsets.all(8.w),
      ),
    );
  }
}

class SingalContainerText extends StatelessWidget {
 String ContainerTextname;

 SingalContainerText(this.ContainerTextname);

  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: EdgeInsets.only(left: 8.w),
        child:  Text(
          ContainerTextname ,
          style:  TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w600,
              color: ColorConst().secondaryColor),
        ));
  }
}
