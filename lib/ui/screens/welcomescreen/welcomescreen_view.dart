
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthmote/const/color_const.dart';
import 'package:healthmote/ui/screens/loginscreens/loginscreen_view.dart';


class WelComeScreenView extends StatelessWidget {
   WelComeScreenView({Key? key}) : super(key: key);
   ColorConst c=ColorConst();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        physics:BouncingScrollPhysics(),
        child: Column(
          children:  [
            Container(
              margin: EdgeInsets.only(top: 28.w),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text("Hello Again!",style: TextStyle(fontSize: 36.sp,color: ColorConst().secondaryColor,fontWeight: FontWeight.w600),),
                  Text("Welcome to HEALTHMOTE",style: TextStyle(fontSize: 20.sp,color:ColorConst().secondaryColor,fontWeight: FontWeight.w400),),
                ],
              ),
            ),
             SizedBox(
              height: 40.h,
            ),
            SingalCaredIteam("I'M A", "DOCTOR", "doctores_image.jpg",ColorConst().secondaryColor),
             SizedBox(
              height: 25.h,
            ),
            SingalCaredIteam("I'M A", "PATIETN", "patients_image.jpg",ColorConst().secondaryColor),
             SizedBox(
              height: 70.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member?",style: TextStyle(color: ColorConst().secondaryColor,fontSize: 15.sp,fontWeight: FontWeight.w500)),
                InkWell(
                  onTap: () {

                  },
                  child: Text(" Contact Us",style: TextStyle(color:Color(0XFF38A5E7),fontSize: 15.sp,fontWeight: FontWeight.w500)),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
// shadowColor: Color(0X10000000),
// color: Color(0X5FE5E5E5),
class SingalCaredIteam extends StatelessWidget {

String doctor;

SingalCaredIteam(this.doctor, this.patients, this.image,this.colorc);

String patients;
String image;
Color colorc;
  @override
  Widget build(BuildContext context) {
    return  Container(

      margin: EdgeInsets.only(left: 20,right: 20),
    decoration:  BoxDecoration(
      color: Color(0X8FFFFFFF),
      borderRadius: BorderRadius.circular(10),
      boxShadow: [new BoxShadow(
        color: Color(0X26000000),
        spreadRadius: 8,

        blurRadius: 8.0,
      ),],
    ),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return LoginScreenView();
          },));
        },
        child: Container(
          margin: EdgeInsets.all(10.w),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(doctor,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15.sp,color: colorc)),
                        Text(patients,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25.sp,color: colorc)),
                      ],
                    ),
                     SizedBox(
                      width: 8.h,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.w,bottom: 10.w),
                      height: 120.w,
                      width: 180.w,
                      decoration: BoxDecoration(
                       // color: Colors.black12,
                        image: DecorationImage(image: AssetImage("asset/image/${image}"),fit: BoxFit.fill),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
