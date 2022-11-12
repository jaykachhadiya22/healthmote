import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthmote/class/notesmodal.dart';

import '../../../../../const/color_const.dart';



class NotesView extends StatelessWidget {
  NotesView({Key? key}) : super(key: key);

  NotesModal n = NotesModal(
      Name: 'Jenny Doe',
      Notesname: 'RPM NOTE',
      Datetime: 'APR 20,2022 | 06:05 AM',
      ans : 'NO',
      Notes: "Have you been exposed someone with COVID-19 or have yo experienced symptoms like body ache,fatigue,runny nose,fever,defficulty  breating,loss of taste,store throat,congestion, nausea,vomitingor diarrhea? :");


  NotesModal n1 = NotesModal(
      Name: 'Jenny Doe',
      Notesname: 'RPM NOTE',
      Datetime: 'APR 20,2022 | 06:05 AM',
      ans : 'YES',
      Notes: "Have you been exposed someone with COVID-19 or have yo experienced symptoms like body ache,fatigue,runny nose,fever,defficulty  breating,loss of taste,store throat,congestion, nausea,vomitingor diarrhea? :");


  NotesModal n2 = NotesModal(
      Name: 'Jenny Doe',
      Notesname: 'RPM NOTE',
      Datetime: 'APR 20,2022 | 06:05 AM',
      ans : 'NO',
      Notes: "Have you been exposed someone with COVID-19 or have yo experienced symptoms like body ache,fatigue,runny nose,fever,defficulty  breating,loss of taste,store throat,congestion, nausea,vomitingor diarrhea? :");


  NotesModal n3 = NotesModal(
      Name: 'Jenny Doe',
      Notesname: 'RPM NOTE',
      Datetime: 'APR 20,2022 | 06:05 AM',
      ans : 'YES',
      Notes: "Have you been exposed someone with COVID-19 or have yo experienced symptoms like body ache,fatigue,runny nose,fever,defficulty  breating,loss of taste,store throat,congestion, nausea,vomitingor diarrhea? :");


  NotesModal n4 = NotesModal(
      Name: 'Jenny Doe',
      Notesname: 'RPM NOTE',
      Datetime: 'APR 20,2022 | 06:05 AM',
      ans : 'NO',
      Notes: "Have you been exposed someone with COVID-19 or have yo experienced symptoms like body ache,fatigue,runny nose,fever,defficulty  breating,loss of taste,store throat,congestion, nausea,vomitingor diarrhea? :");




  @override
  Widget build(BuildContext context) {
    List<NotesModal> notes = [n, n1, n2, n3, n4];
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
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: notes.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) =>SingalListStyle(notes[index]),
                ),
              ),
            ),
          )),
        ],
      ),
    ));
  }
}

class SingalListStyle extends StatelessWidget {
  NotesModal note;
  SingalListStyle(this.note);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15.w, right: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 25.h,
          ),
          Container(
            margin: EdgeInsets.only(left: 12.w),
            child: Row(
              children: [
                RichText(
                    text: TextSpan(
                        style: DefaultTextStyle.of(context)
                            .style,
                        children: <TextSpan>[
                          TextSpan(
                              text: "${note.Name} ",
                              style:  TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color:ColorConst().secondaryColor,
                                  fontSize: 12.sp)),
                           TextSpan(
                              text: "Created a",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: ColorConst().secondaryColorligh,
                                  fontSize: 11.sp)),
                        ])),
                 SizedBox(
                  width: 2.w,
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 2.w,top: 2.w),
                  decoration: BoxDecoration(
                    color:ColorConst().secondaryColor,
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Text("  ${note.Notesname}  ",
                      style:  TextStyle(
                          color: Colors.white, fontSize: 11.sp)),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 12.w),
            child: Text(
              "${note.Datetime}",
              style:  TextStyle(
                  fontSize: 10.sp,
                  color: ColorConst().secondaryColorligh,
                  fontWeight: FontWeight.w400),
            ),
          ),
           SizedBox(
            height: 10.h,
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: ColorConst().Extragry,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 15.w, right: 10.w,bottom: 10.w),
              child: Column(
                children: [
                   SizedBox(
                    height: 10.h,
                  ),
                  RichText(text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children:  <TextSpan>[
                        TextSpan(
                            text:
                            "${note.Notes}",
                            style:   TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color(0X99023246),
                                fontSize: 14.sp)),
                        TextSpan(
                            text:
                            " ${note.ans}",
                            style:   TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black54,
                                fontSize: 12.sp)),
                      ]
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
