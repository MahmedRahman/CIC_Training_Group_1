import 'package:cic_training_app_1/app/modules/onbording/views/widget/section1.dart';
import 'package:cic_training_app_1/app/modules/onbording/views/widget/section2.dart';
import 'package:cic_training_app_1/app/modules/onbording/views/widget/section3.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/onbording_controller.dart';

class OnbordingView extends GetView<OnbordingController> {
  const OnbordingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            section1(),
            section2(),
            SizedBox(
              height: 10,
            ),
            section3()
          ],
        ),
      ),
    );
  }
}
