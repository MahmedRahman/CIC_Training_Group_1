import 'package:cic_training_app_1/app/data/app_color.dart';
import 'package:cic_training_app_1/app/modules/splash/views/widget/section1.dart';
import 'package:cic_training_app_1/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Get.toNamed(Routes.ONBORDING);
        },
        child: Stack(
          children: [
            section1(),
            section2(),
            section3(),
          ],
        ),
      ),
    );
  }

  Center section3() {
    return Center(
      child: Image.asset("asset/image/mylogo.png"),
    );
  }

  Opacity section2() {
    return Opacity(
      opacity: .78,
      child: Container(
        color: AppColor.PrimaryColor,
      ),
    );
  }
}
