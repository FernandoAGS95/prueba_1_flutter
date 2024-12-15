import 'package:flutter/material.dart';
Widget TituloApp(BuildContext context,String titulo) {
    return  Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 10), 
        child: Text(
          titulo,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 34,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }