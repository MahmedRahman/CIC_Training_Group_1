import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

Product product1 = Product(
  name: "product name",
  description: "description",
  title: "title",
  image: "asset/image/map.png",
  price: 200,
);

class HomeView extends GetView<HomeController> {
  
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
                productCard(
                  image: product1.image,
                  title: product1.title,
                  Price: product1.price,
                  decription: product1.description,
                  name: product1.name,
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
            child: Image.asset(image),
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

class Product {
  String name;
  String description;
  String title;
  int price;
  String image;

  Product({
    required this.name,
    required this.description,
    required this.title,
    required this.image,
    required this.price,
  });
}
