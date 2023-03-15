import 'package:cic_training_app_1/app/modules/home/module/product.dart';
import 'package:cic_training_app_1/app/modules/home/views/Widget/productCard.dart';
import 'package:cic_training_app_1/app/modules/home/views/Widget/section7.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'Widget/section1.dart';
import 'Widget/section2.dart';
import 'Widget/section3.dart';

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
    HomeControllerApi().getProduct();
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
                FutureBuilder(
                    future: HomeControllerApi().getProduct(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        print(snapshot.data);

                        List ProductList = snapshot.data!;

                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                              children: List.generate(ProductList.length, (index) {
                            print(ProductList.elementAt(index));
                            return productCard(
                              image: ProductList.elementAt(index)["image"],
                              title: ProductList.elementAt(index)["title"],
                              Price: product1.price,
                              decription: ProductList.elementAt(index)["description"],
                              name: ProductList.elementAt(index)["name"],
                            );
                          })),
                        );
                      }

                      return CircularProgressIndicator();
                    }),
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
}
