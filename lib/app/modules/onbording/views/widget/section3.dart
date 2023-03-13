import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

Widget section3() {
  return Stack(
    clipBehavior: Clip.none,
    children: [
      Container(
        height: 120,
        decoration: BoxDecoration(
          color: Colors.red,
        ),
      ),
      Positioned(
        right: 0,
        left: 0,
        top: -20,
        child: Center(
          child: Positioned(
            left: 0,
            child: Center(
              child: Container(
                //width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff008066),
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Color(0xffE79E39).withOpacity(.5),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Opacity(
                opacity: .5,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Color(0xffE79E39),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Color(0xffE79E39),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Color(0xffE79E39).withOpacity(.5),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Opacity(
                opacity: .5,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Color(0xffE79E39),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Text("Skip"),
        ],
      ),
    ],
  );
}
