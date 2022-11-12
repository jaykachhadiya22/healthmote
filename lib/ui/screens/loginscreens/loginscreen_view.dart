import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthmote/const/color_const.dart';
import 'package:healthmote/ui/screens/loginscreens/forgotpassword_view.dart';
import 'package:healthmote/ui/screens/mainscreen/mainscreen_view.dart';

import 'package:healthmote/ui/widgets/custom_button.dart';

class LoginScreenView extends StatelessWidget {
  LoginScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          padding: REdgeInsets.only(top: 10.w),
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
                      "Hello Again!",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 36.sp,
                          color: ColorConst().secondaryColor),
                    ),
                    Text(
                      "Welcome to HEALTHMOTE",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20.sp,
                          color: ColorConst().secondaryColor),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
             Container(
               margin: EdgeInsets.only(left: 15.w, right: 15.w),
               child: Column(
                 children: [
                   Hero(
                     tag: 'imag1',
                     transitionOnUserGestures: true,
                     child: Material(
                       child: Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
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
                             hintText: 'Enter Username',
                             hintStyle: TextStyle(
                               fontSize: 15.sp,
                               fontWeight: FontWeight.w500,
                               color: const Color(0X50023246),
                             ),
                             border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(50),
                               borderSide: BorderSide(
                                 width: 0.w,
                                 style: BorderStyle.none,
                               ),
                             ),
                           ),
                         ),
                       ),
                     ),
                   ),
                   SizedBox(
                     height: 15.h,
                   ),
                   SingalPasswored('Password'),
                   Padding(
                     padding: const EdgeInsets.only(top: 13),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         InkWell(
                           onTap: () {
                             Navigator.push(context, MaterialPageRoute(
                               builder: (context) {
                                 return ForgotPasswordView();
                               },
                             ));
                           },
                           child: Container(

                             child: Text("Forgot Password",
                                 style: TextStyle(
                                     fontSize: 16.sp,
                                     fontWeight: FontWeight.w500,
                                     color: Color(0X7F023246))),
                           ),
                         ),
                       ],
                     ),
                   ),
                   SizedBox(
                     height: 40.h,
                   ),
                   CustomButton('Login', () {
                     Navigator.push(context, MaterialPageRoute(
                       builder: (context) {
                         return MainScreen();
                       },
                     ));
                   }),
                 ],
               ),
             ),
              SizedBox(
                height: 80.h,
              ),
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  "asset/image/healthmote_image.jpg",
                  width: 236.74.w,
                  height: 66.w,
                  fit: BoxFit.fitWidth,
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a Member?",
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: ColorConst().secondaryColor),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      " Contact us",
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0XFF38A5E7)),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class SingalPasswored extends StatefulWidget {
  String s;

  SingalPasswored(this.s);

  @override
  State<SingalPasswored> createState() => _SingalPassworedState();
}

class _SingalPassworedState extends State<SingalPasswored> {
  bool hidepass = true;

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 2,
            blurRadius: 5.0,
          )
        ],
      ),
      child: TextField(
        obscureText: hidepass,
        decoration: InputDecoration(
          hintText: widget.s,
          hintStyle: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            color: Color(0X50023246),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              width: 0.w,
              style: BorderStyle.none,
            ),
          ),
          suffixIcon: Container(
           padding: EdgeInsets.only(right: 5.w),
            child: IconButton(
                onPressed: () {
                  hidepass = !hidepass;
                  setState(() {});
                },
                icon: hidepass
                    ? Icon(Icons.visibility_outlined,size: 25.sp,)
                    : Icon(Icons.visibility_off_outlined,size: 25.sp),
                color: Color(0X50023246)),
          ),
        ),
      ),
    );
  }
}
