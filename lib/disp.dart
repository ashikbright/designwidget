import 'package:flutter/material.dart';
import 'package:designwidget/DesignWidget.dart';

class dispbtn extends StatelessWidget {
  const dispbtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.orangeAccent, Colors.green], // You can change these colors
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: SafeArea(
        child: Center(
          child: SizedBox(
            width: 250,
            height: 50,
            child: DesignWidget(
              btnname: 'Overflow..',
              icon: Icon(Icons.arrow_circle_right_rounded),
              callback: () {
                print("Submitted");
              },
              textStyle: TextStyle(
                color: Colors.grey[800],
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}