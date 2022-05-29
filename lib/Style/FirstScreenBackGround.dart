import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utilities/WaveClipper.dart';
import 'color.dart';

Widget getFirstScreenBackGround(context) {
  return Stack(
    children: [
      Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.yellow.withOpacity(0.5),
                Color(ColorX.lightGreen),
              ]),
        ),
      ),
      ClipPath(
        clipper: WaveClipper(),
        child: Container(
          color: Color(ColorX.lightGreen),
          height: MediaQuery.of(context).size.height / 1,
        ),
      ),
      ClipPath(
        clipper: WaveClipper(),
        child: Container(
          // color: Color(ColorX.green),
          height: MediaQuery.of(context).size.height / 1.5,
        ),
      ),
    ],
  );
}
