import 'package:cic_training_app_1/app/modules/home/controllers/home_controller.dart';
import 'package:cic_training_app_1/app/modules/home/views/Widget/categoryItem.dart';
import 'package:flutter/material.dart';

Widget section2() {
  return FutureBuilder(
      future: HomeControllerApi().getProduct(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          print("bbbb");
          print(snapshot.data![0]["name"]);
          print("bbbb");

          return Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(snapshot.data!.length, (index) {
                  return categoryItem(
                    text: snapshot.data![index]["name"],
                    icon: snapshot.data![index]["image"],
                  );
                }),
              ),
            ),
          );
        }

        return CircularProgressIndicator();
      });
}
