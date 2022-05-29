import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task3/Style/FirstScreenBackGround.dart';
import 'package:task3/Style/TextStyle.dart';
import 'package:task3/Style/color.dart';
import 'package:task3/Widgets/SignInButton.dart';
import 'package:task3/provider/google_sign_in.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          getFirstScreenBackGround(context),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 8,
                ),
                Center(
                  child: Image.asset(
                    'asset/images/Capture.PNG',
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 12,
                      bottom: MediaQuery.of(context).size.height / 20),
                  child: Text(
                    'Select any Sign in option ',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color(ColorX.white)),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    getSignInButton(context,
                        iconData: Icons.phone,
                        backgroundColor: ColorX.lightYellow,
                        iconColor: ColorX.lightYellow,
                        text: 'Sign in with phone number'),
                    getSignInButton(context,
                        iconData: Icons.facebook,
                        backgroundColor: ColorX.blue,
                        iconColor: ColorX.white,
                        iconBackground: ColorX.blue,
                        text: 'Sign in with facebook'),
                    GestureDetector(
                        onTap: () {
                          final provider = Provider.of<GoogleSignInProvider>(
                              context,
                              listen: false);
                          provider.googleLogin();
                        },
                        child: getSignInButton(context,
                            text: 'Sign in with google')),
                    getSignInButton(context,
                        iconData: Icons.email_outlined,
                        backgroundColor: ColorX.lightYellow,
                        iconColor: ColorX.lightYellow,
                        iconBackground: ColorX.white,
                        text: 'Sign in with email'),
                  ],
                ),
                Center(
                  child: Wrap(
                    children: [
                      Text(
                        'Don\'t have an account ? ',
                        style: getTextStyle(),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom:
                                    BorderSide(color: Color(ColorX.white)))),
                        child: Text(
                          'Sign Up',
                          style: getTextStyle(),
                        ),
                      ),
                      Text(
                        ' Here!',
                        style: getTextStyle(),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
