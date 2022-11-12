
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthmote/const/color_const.dart';
import 'package:healthmote/ui/screens/mainscreen/mainscreen_view.dart';
import 'package:healthmote/ui/widgets/custom_button.dart';

class ForgotPasswordView extends StatelessWidget {
  ForgotPasswordView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Container(
                padding:  EdgeInsets.only(top: 10.w),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomLeft,
                      colors: [Color(0X10023246), Color(0X0C4C4C4)]),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back_ios_rounded),
                            color: Colors.black26,
                            iconSize: 30.w),
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text(
                            "Forgot",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 36.sp,
                                color: ColorConst().secondaryColor),
                          ),
                          Text(
                            "  Password?",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 36.sp,
                                color:ColorConst().secondaryColor),
                          ),
                           SizedBox(
                            height: 10.h,
                          ),

                        ],
                      ),

                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:  [
                          Text(
                            "Please enter your UserName",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 20.sp,
                                color: ColorConst().secondaryColorligh),
                          ),
                          Text(
                            "associate with your account.",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 20.sp,
                                color:ColorConst().secondaryColorligh),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                        ],
                      ),

                    ),
                    Hero(
                      tag: 'imag1',
                      child: Material(
                        child: Container(
                          margin: EdgeInsets.only(left: 15.w, right: 15.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 2,
                                blurRadius: 5.0,
                              )
                            ],
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Username / Email',
                              hintStyle:  TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0X50023246),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                     SizedBox(
                      height: 60.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.w,right: 10.w),
                      child: CustomButton('Send New Password',(){
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return MainScreen();
                        },));
                      }),
                    ),
                     SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           Text("Already a member?",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500,color: ColorConst().secondaryColorligh),),
                          InkWell(
                            onTap: () {

                            },
                            child:   Text(" Login",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500,color: Color(0XFF38A5E7)),),
                          )
                        ],
                      ),
                    ),
                     SizedBox(
                      height: 35.h,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child:  Image(image: AssetImage("asset/image/healthmote_image.jpg"),colorBlendMode: BlendMode.colorBurn, width: 236.74.w,
                        height: 66.w,fit: BoxFit.fitWidth),),
                     SizedBox(
                      height: 35.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Text("Not a Member?",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500,color: ColorConst().secondaryColor),),
                        InkWell(
                          onTap: () {

                          },
                          child:  Text(" Contact us",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500,color: const Color(0XFF38A5E7)),),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )));
  }
}
