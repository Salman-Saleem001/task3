import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:task3/Style/color.dart';

import '../Style/TextFormFieldDecoration.dart';
import '../Style/TextStyle.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(ColorX.lightGreen),
          title: Text(
            'Driver Registration',
            style: getTextStyle(
              size: 18,
              fontWeight: FontWeight.w800,
            ),
          ),
          leading: Icon(
            Icons.menu,
            color: Color(ColorX.lightYellow),
          ),
          centerTitle: true,
          actions: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Stack(
                children: [
                  Icon(
                    Icons.circle_outlined,
                    size: 36,
                    color: Color(ColorX.lightYellow),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.0, top: 6.0),
                    child: Icon(
                      Icons.language,
                      color: Color(ColorX.lightYellow),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(left: 30, right: 30, top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Enter the following details:',
                style: getTextStyle(fontWeight: FontWeight.w500, size: 18),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              TextFormField(
                decoration: getOutlineBorderDecoration(
                  prefixicon: Icons.person_outline,
                  hintText: 'First Name',
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              TextFormField(
                decoration: getOutlineBorderDecoration(
                  prefixicon: Icons.recent_actors_outlined,
                  hintText: 'Last Name',
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              TextFormField(
                decoration: getOutlineBorderDecoration(
                  prefixicon: Icons.phone_outlined,
                  hintText: 'Telephone Number',
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              TextFormField(
                decoration: getOutlineBorderDecoration(
                  prefixicon: Icons.wysiwyg_rounded,
                  hintText: 'CNIC Number',
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              TextFormField(
                decoration: getOutlineBorderDecoration(
                  prefixicon: Icons.newspaper_outlined,
                  hintText: 'Driver License Number',
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              TextFormField(
                decoration: getOutlineBorderDecoration(
                  prefixicon: Icons.directions_car_outlined,
                  hintText: 'Vehicle Registration Number',
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: FlatButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Color(ColorX.lightBlue),
                      child: Text(
                        'Cancel',
                        style:
                            getTextStyle(size: 14, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.height / 20,
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Color(ColorX.lightYellow),
                      child: Text(
                        'Save',
                        style: getTextStyle(
                            size: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(ColorX.lightBlue)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
