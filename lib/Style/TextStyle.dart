import 'dart:ui';

import 'package:flutter/cupertino.dart';

TextStyle getTextStyle(
    {double? size = 16,
    Color? color = const Color(0xffffffff),
    FontWeight? fontWeight = FontWeight.w500}) {
  return TextStyle(fontSize: size, fontWeight: fontWeight, color: color);
}
