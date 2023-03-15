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

class HomeControllerApi extends GetConnect {
  Future<List> getProduct() async {
    Response response =
        await get("https://629656fc75c34f1f3b2e0b36.mockapi.io/api/v1/product");
    return response.body;
  }

  Future<List> getCategory() async {
    Response response = await get(
        "https://629656fc75c34f1f3b2e0b36.mockapi.io/api/v1/category");
    return response.body;
  }
}

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
                              children:
                                  List.generate(ProductList.length, (index) {
                            print(ProductList.elementAt(index));
                            return productCard(
                              image: ProductList.elementAt(index)["image"],
                              title: ProductList.elementAt(index)["title"],
                              Price: ProductList.elementAt(index)["price"],
                              decription:
                                  ProductList.elementAt(index)["description"],
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
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
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

  Widget section2() {
    return Container(
      child: FutureBuilder(
        future: HomeControllerApi().getCategory(),
        builder: (context, snapshot) {

          if (snapshot.hasData) {
            List categoryList = snapshot.data!;

            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(categoryList.length,
                  (index) {
                    return categoryItem(
                      text: categoryList.elementAt(index)["name"],
                      image: categoryList.elementAt(index)["image"],
                    );
                  },
                ),
              ),
            );


          }
          return CircularProgressIndicator();
        },
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
    required String image,
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
              child: Image.network(image,
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
class Category{
  String text ;
  String image ;
  Category({
    required this.text,
    required this.image
});
}
