import 'package:cic_training_app_1/app/data/app_color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: Get.width,
            child: Image.asset(
              "asset/image/bg.png",
              fit: BoxFit.cover,
            ),
          ),
          Opacity(
            opacity: .78,
            child: Container(
              color: AppColor.PrimaryColor,
            ),
          ),
          Center(
            child: Image.asset("asset/image/mylogo.png"),
          ),
        ],
      ),
    );
  }
}
