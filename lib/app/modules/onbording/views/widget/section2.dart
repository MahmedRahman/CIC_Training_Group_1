

  import 'package:flutter/material.dart';

Padding section2() {
    return Padding(
            padding: const EdgeInsets.only(
              top: 40,
              left: 70,
              right: 70,
            ),
            child: Center(
              child: Column(
                children: [
                  Text(
                    'Main Title here',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    "lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w200,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          );
  }
