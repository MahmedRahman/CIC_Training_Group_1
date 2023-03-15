 import 'package:flutter/material.dart';

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
