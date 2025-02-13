import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyMacroWidget extends StatelessWidget {
  final String title;
  final int value;
  final IconData icon;

  const MyMacroWidget({
    required this.title,
    required this.value,
    required this.icon,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(         
            color: Colors.grey.shade400,
            offset: Offset(2, 2),
            blurRadius: 5,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            FaIcon(
              icon, color: Colors.red[300],),
            SizedBox(height: 5),
            Text(
              title == "Calories"
              ? '$value $title'
              : '${value}g $title',
              style: TextStyle(
                fontSize: 10,
              ),
              )
        
          ],),
      )
    ),
  );
  }
}