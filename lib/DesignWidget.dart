import 'package:flutter/material.dart';

class DesignWidget extends StatelessWidget {
  
  final String btnname;
  final Icon? icon;
  final Color? bgcolor;
  final TextStyle? textStyle;
  final VoidCallback? callback;
const DesignWidget(
      {super.key, required this.btnname,
      this.icon,
      this.bgcolor = Colors.transparent,
      this.textStyle,
      this.callback});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(onPressed: () {
        callback!();
      }, child: icon!=null ? Row(
          children: [
            icon!,
            Text(btnname,style: textStyle,),
          ],
      ):Text(btnname,style: textStyle,),
      style: ElevatedButton.styleFrom(
        primary: bgcolor,
        shadowColor: bgcolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(21),
            bottomLeft: Radius.circular(21),
          )
        )
      ),
      ),
    );
  }
}
