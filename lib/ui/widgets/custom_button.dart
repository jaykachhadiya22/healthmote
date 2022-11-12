import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../const/color_const.dart';

class CustomButton extends StatelessWidget {
  String title;
  Function callBack;

  CustomButton(this.title, this.callBack);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        callBack();
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [ColorConst().secondaryColor, Color(0X9f023246)]),
        ),
        child: Center(
          child: Padding(
            padding: REdgeInsets.only(top: 8.w, bottom: 8.w),
            child: Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 20.sp),
            ),
          ),
        ),
      ),
    );
  }
}
