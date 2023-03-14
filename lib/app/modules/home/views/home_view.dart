import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: 26,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                section1(),
                SizedBox(
                  height: 20,
                ),
                section2(),
                SizedBox(
                  height: 20,
                ),
                section3(),
                Container(
                  height: 250,
                  color: Colors.blue,
                ),
                Container(
                  height: 250,
                  color: Colors.yellow,
                ),
                section7(
                  text: "Who we Are",
                  image: "asset/image/slider001.png",
                ),
                SizedBox(
                  height: 25,
                ),
                section7(
                  text: "Our Branches",
                  image: "asset/image/map.png",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container section3() {
    return Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "asset/image/slider001.png",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "asset/image/slider001.png",
                        ),
                      )
                    ],
                  ),
                ),
              );
  }

  Container section2() {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(10, (index) {
            return categoryItem(
              text: "Growth",
              icon: "asset/image/open-book.png",
            );
          }),
        ),
      ),
    );
  }

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

  Widget categoryItem({
    required String icon,
    required String text,
  }) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 5,
        right: 5,
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset(
                icon,
                width: 31,
              ),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          )
        ],
      ),
    );
  }

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
}
