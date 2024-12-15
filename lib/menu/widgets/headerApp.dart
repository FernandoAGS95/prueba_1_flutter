import 'package:flutter/material.dart';

Widget headerSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            child: const Icon(
              Icons.menu,
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