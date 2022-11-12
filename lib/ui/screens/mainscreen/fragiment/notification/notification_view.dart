import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthmote/ui/screens/mainscreen/fragiment/notification/widgets/abnormal_widget.dart';
import 'package:healthmote/ui/screens/mainscreen/fragiment/notification/widgets/information_widget.dart';
import 'package:healthmote/ui/screens/mainscreen/fragiment/notification/widgets/matipalabnormalwidget.dart';
import 'package:healthmote/ui/screens/mainscreen/fragiment/notification/widgets/message_widget.dart';

import '../../../../widgets/custom_appbar.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0X5FF9F9F9),
       appBar: CustomAppBar(
        title:  Text('Notifications',style: TextStyle(
          fontSize: 22.sp,
          fontWeight: FontWeight.w600,
          color: Color(0xFF37474F),
          letterSpacing: 0.6,
        )),
        appBar: AppBar(),
        widgets: <Widget>[Padding(
          padding: EdgeInsets.only(right: 20.w),
          child: Container(
            margin: EdgeInsets.only(top: 5.w),
            height: 50.h,
            width: 45.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage("asset/image/appbar_image.jpg"),fit: BoxFit.fitHeight),
            ),
          ),
        )],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),

          Expanded(child: Container(
            height: double.infinity,
            width: double.infinity,
            child: ListView.builder(itemCount: 1,itemBuilder: (context, index) {
              return Card(
                color: Colors.white,
                elevation: 2,
                margin: const EdgeInsets.all(0),
                shadowColor: backgroundcolor,
                shape:  RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.r),
                    topRight: Radius.circular(10.r),
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 15.w,right: 15.w,top: 30.w),
                  child: Column(
                    children: [
                       SizedBox(
                        height: 10.h,
                      ),
                      AbnormalWidgetView('Abnormal Readings', 'Apr 20,2022 | 06:05 AM', 'John Doe', 'Apr 20,2022 | 06:05 Am', '99/74', '54'),
                      SizedBox(
                        height: 30.h,
                      ),

                      MessageWidgetView('Message From Care Coach', 'Apr 20,2022 | 05:15 AM', 'No', 'Have you been exposed someone with COVID-19 or have yo experienced symptoms like body ache,fatigue,runny nose,fever,defficulty  breating,loss of taste,store throat,congestion, nausea,vomitingor diarrhea? :'),
                      SizedBox(
                        height: 30.h,
                      ),
                      InformationWidget('Take Your Readings', 'Apr 20,2022 | 04:45 AM','https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                      SizedBox(
                        height: 30.h,
                      ),
                      MaltipalAbnormalWidget('Abnormal Readings', 'Apr 20,2022 | 06:05 AM', 'John Doe', 'Apr 20,2022 | 06:05 Am', '99/74', '54'),
                    ],
                  ),
                ),
              );
            },),
          )),
        ],
      ),
    );
  }
}
