 import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget productCard({
    required String image,
    required String name,
    required String title,
    required String decription,
    required int Price,
  }) {
    return Card(
      elevation: 10,
      child: Container(
        //height: 250,
        width: 255,
        child: Column(children: [
          Container(
            width: Get.width,
            decoration: BoxDecoration(
              color: Color(0xffE9E9EC),
            ),
            child: Image.network(image),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  decription,
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.label,
                  color: Color(0xffE79E39),
                ),
                Text(Price.toString()),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.shop),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    onPressed: () {},
                    color: Color(0xff008066),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("asset/image/Path 59551.png"),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Donate",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),

                  // child: ElevatedButton(

                  //   onPressed: () {},
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     crossAxisAlignment: CrossAxisAlignment.center,
                  //     children: [
                  //       Image.asset("asset/image/Path 59551.png"),
                  //       SizedBox(
                  //         width: 5,
                  //       ),
                  //       Text("Donate"),
                  //     ],
                  //   ),
                  // ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }

 