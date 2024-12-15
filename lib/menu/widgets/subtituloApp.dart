import 'package:flutter/material.dart';

Widget SubtituloApp(BuildContext context) {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(top: 20, left: 30,bottom: 20),
        child: Text(
          'Our Majestic world together',
          style: TextStyle(
            color: Color(0xFF839e9e),
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }