import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healthmote/class/patientimodal.dart';
import 'package:healthmote/const/color_const.dart';
import 'package:healthmote/ui/widgets/custom_appbar.dart';

class PatientView extends StatefulWidget {
  PatientView({Key? key}) : super(key: key);
  Modal m = Modal(Name: 'John Doe', RPM: '10:00', CCM: "20:00", Abnormal: '4');
  Modal m1 = Modal(Name: 'John Doe', RPM: '10:00', CCM: "20:00", Abnormal: '4');
  Modal m2 = Modal(Name: 'John Doe', RPM: '10:00', CCM: "20:00", Abnormal: '4');
  Modal m3 = Modal(Name: 'John Doe', RPM: '10:00', CCM: "20:00", Abnormal: '4');
  Modal m4 = Modal(Name: 'John Doe', RPM: '10:00', CCM: "20:00", Abnormal: '4');
  Modal m5 = Modal(Name: 'John Doe', RPM: '10:00', CCM: "20:00", Abnormal: '4');
  Modal m6 = Modal(Name: 'John Doe', RPM: '10:00', CCM: "20:00", Abnormal: '4');
  Modal m7 = Modal(Name: 'John Doe', RPM: '10:00', CCM: "20:00", Abnormal: '4');
  Modal m8 = Modal(Name: 'John Doe', RPM: '10:00', CCM: "20:00", Abnormal: '4');
  Modal m9 = Modal(Name: 'John Doe', RPM: '10:00', CCM: "20:00", Abnormal: '4');
  Modal m10 =
      Modal(Name: 'John Doe', RPM: '10:00', CCM: "20:00", Abnormal: '4');
  Modal m11 =
      Modal(Name: 'John Doe', RPM: '10:00', CCM: "20:00", Abnormal: '4');
  Modal m12 =
      Modal(Name: 'John Doe', RPM: '10:00', CCM: "20:00", Abnormal: '4');
  Modal m13 =
      Modal(Name: 'John Doe', RPM: '10:00', CCM: "20:00", Abnormal: '4');
  Modal m14 =
      Modal(Name: 'John Doe', RPM: '10:00', CCM: "20:00", Abnormal: '4');
  Modal m15 =
      Modal(Name: 'John Doe', RPM: '10:00', CCM: "20:00", Abnormal: '4');

  List<Modal> patientlist = [];

  @override
  State<PatientView> createState() => _PatientViewState();
}

class _PatientViewState extends State<PatientView> {
  @override
  void initState() {
    // TODO: implement initState
    widget.patientlist = [
      widget.m,
      widget.m1,
      widget.m2,
      widget.m3,
      widget.m4,
      widget.m5,
      widget.m6,
      widget.m7,
      widget.m8,
      widget.m9,
      widget.m10,
      widget.m11,
      widget.m12,
      widget.m13,
      widget.m14,
      widget.m15,
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0X5FF9F9F9),
        appBar: CustomAppBar(
          title:  Text('Patient List',
              style: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xFF37474F),
                letterSpacing: 0.6,
              )),
          appBar: AppBar(),
          widgets: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: Container(
                margin: EdgeInsets.only(top: 5.w),
                height: 50.h,
                width: 45.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("asset/image/appbar_image.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Container(

              padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 8.w),
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Color(0XFFE5E5E5),
                  filled: true,
                  hintText: "Search Patients",
                  hintStyle: const TextStyle(
                    color:  Color(0X993C3C34),
                  ),
                  prefixIcon: Container(
                    margin: EdgeInsets.only(left: 10.w),
                      child:
                      SvgPicture.asset('asset/image/search_icon_image.svg'),padding: EdgeInsets.all(9.w),height: 35.h,width: 35.w,),
                  //border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(style: BorderStyle.none, width: 0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 0, style: BorderStyle.none),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: EdgeInsets.all(0),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                child: Card(
                  color: Colors.white,
                  elevation: 2,
                  margin: EdgeInsets.all(0),
                  shadowColor: backgroundcolor,
                  shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.r),
                      topRight: Radius.circular(10.r),
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 20.w, top: 15.w, right: 20.w),
                          child: Table(
                            border: TableBorder.symmetric(
                                inside:  BorderSide(
                                    width: 1.w, color: Colors.black12)),
                            children:  [
                              TableRow(children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 10.w),
                                  child: Text("Name",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 13.sp,
                                          color: Color(0X993C3C34))),
                                ),
                                Text("   RPM\n   Mins",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13.sp,
                                        color: Color(0X993C3C34))),
                                Text("   CCM\n   Mins",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13.sp,
                                        color: Color(0X993C3C34))),
                                Text("   Abnormal\n   Reading",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13.sp,
                                        color: Color(0X993C3C34))),
                              ]),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          margin:  EdgeInsets.only(left: 20.w, right: 20.w),
                          child: const Divider(
                            color: Colors.black12,
                            height: 1,
                          ),
                        ),
                        Flexible(
                          child: Container(
                            margin:
                                EdgeInsets.only(right: 20.w, left: 20.w, top: 10.w),
                            width: double.infinity,
                            height: double.infinity,
                            child: ListView.separated(
                              itemCount: widget.patientlist.length,
                              physics: BouncingScrollPhysics(),
                              itemBuilder: (context, index) =>
                                  SingleListItem(widget.patientlist[index]),
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return  Divider(
                                  height: 25.h,
                                  color: Colors.black12,
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SingleListItem extends StatelessWidget {
  Modal patientlist;

  SingleListItem(this.patientlist);

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.symmetric(
          inside: BorderSide(width: 1, color: Colors.black12)),
      children: [
        TableRow(children: [
          Text("${patientlist.Name}",
              style:  TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15.sp,
                  color: Color(0XFF455A64))),
          Text("   ${patientlist.RPM}",
              style:  TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15.sp,
                  color: Color(0XFF455A64))),
          Text("   ${patientlist.CCM}",
              style:  TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15.sp,
                  color: Color(0XFF455A64))),
          Text("   ${patientlist.Abnormal}",
              style:  TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15.sp,
                  color: Color(0XFF455A64))),
        ]),
      ],
    );
  }
}
