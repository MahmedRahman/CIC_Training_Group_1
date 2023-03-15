 import 'package:flutter/material.dart';

Widget section7({
    required String text,
    required String image,
  }) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 23,
          ),
          Image.asset(image),
        ],
      ),
    );
  }
