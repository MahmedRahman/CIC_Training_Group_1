 import 'package:flutter/material.dart';

Container section1() {
    return Container(
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "To Misr Al Khair",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          Spacer(),
          Image.asset(
            "asset/image/Iconly-Bulk-Notification.png",
            width: 20,
            color: Colors.black,
          )
        ],
      ),
    );
  }

