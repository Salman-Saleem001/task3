import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:task3/Style/TextStyle.dart';
import 'package:task3/Style/color.dart';

InputDecoration getOutlineBorderDecoration({
  String? hintText = '',
  IconData? prefixicon = null,
  int? color = 0xff6342E8,
  String? img = null,
}) {
  return InputDecoration(
    contentPadding: EdgeInsets.zero,
    hintText: hintText,
    errorStyle: TextStyle(
      color: Colors.red,
    ),
    fillColor: Color(ColorX.white).withOpacity(.2),
    filled: true,
    hintStyle: getTextStyle(
        fontWeight: FontWeight.w300,
        color: Color(ColorX.white).withOpacity(.7)),
    floatingLabelStyle: getTextStyle(),
    prefixIcon: img == null
        ? Icon(
            prefixicon,
            size: 30,
            color: Color(ColorX.lightYellow),
          )
        : Image.asset(
            img,
          ),
    labelStyle: getTextStyle(),
    border: InputBorder.none,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide.none,
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(
        color: Colors.red,
        width: 1.0,
      ),
    ),
  );
}
