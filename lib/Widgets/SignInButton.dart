import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Style/TextStyle.dart';
import '../Style/color.dart';

Widget getSignInButton(context,
    {IconData? iconData,
    int? backgroundColor = 0xff000000,
    int? iconColor = 0xff000000,
    String? text,
    int? iconBackground = 0xffFFFFFF}) {
  return text == 'Sign in with google'
      ? Container(
          margin:
              EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(ColorX.white)),
          child: Wrap(
            children: [
              Container(
                margin: EdgeInsets.only(right: 30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image(
                    image: AssetImage(
                      'assets/logos/google_light.png',
                      package: 'flutter_signin_button',
                    ),
                    fit: BoxFit.fill,
                    height: 40,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Text(
                  'Sign in with google',
                  style: getTextStyle(
                      fontWeight: FontWeight.bold, color: Color(ColorX.grey)),
                ),
              )
            ],
          ),
        )
      : Container(
          margin:
              EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(backgroundColor!)),
          child: Wrap(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(iconBackground!)),
                child: IconButton(
                  onPressed: () {},
                  constraints: BoxConstraints(minHeight: 35, minWidth: 35),
                  padding: EdgeInsets.zero,
                  icon: Icon(
                    iconData!,
                    size: 35,
                    color: Color(iconColor!),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                child: Text(
                  text!,
                  style: getTextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        );
}
