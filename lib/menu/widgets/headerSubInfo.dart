import 'package:flutter/material.dart';

Widget headerSubInfo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            child: const Icon(
              Icons.arrow_back_ios_new_sharp,
              size: 50,
              color: Colors.white70,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            child: const Icon(
              Icons.search,
              color: Colors.white,
              size: 50,
            ),
          ),
        ),
      ],
    );
  }