import 'package:flutter/material.dart';

Color backgroundcolor = Color(0XFFD6D6D6);
Color primarycolor = Color(0xFF37474F);
Color secendarycolor = Color(0XFFD6D6D6);

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Text title;
  final AppBar appBar;
  final List<Widget> widgets;

  const CustomAppBar(
      {required this.title, required this.appBar, required this.widgets});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Container(
        margin: EdgeInsets.only(top: 5),
        child: title,
      ),
      centerTitle: true,
      actions: widgets,
      backgroundColor: Color(0X5FF9F9F9),
      elevation: 0,
      leading: Text("", style: TextStyle(color: Color(0X5FF9F9F9))),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
