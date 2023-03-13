 import 'package:flutter/material.dart';
import 'package:get/get.dart';

Container section1() {
    return Container(
          width: Get.width,
          child: Image.asset(
            "asset/image/bg.png",
            fit: BoxFit.cover,
          ),
        );
  }