import 'package:flumeride_first/components/default_button.dart';
import 'package:flumeride_first/constants.dart';
import 'package:flumeride_first/screens/home/home_screen.dart';
import 'package:flumeride_first/screens/sign_in/sign_in_screen.dart';
import 'package:flumeride_first/screens/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Splash extends StatefulWidget {
  static String routeName = "/splash";
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    //해당 기기에 여러가지 상태 정보를 알 수 있는 MediaQuery를 사용 할 것.
    //화면 크기나 화면 로테이션 여부 등의 정보들을 가져올 수 있는데, 우리는 크기 정보를 가져올 것.
    //MediaQuery를 사용함으로써 이후 높이, 패딩, 폰트 사이즈에 대해 상수를 쓰지 않고, width와 height에 곱하기를 한 상대수치를 활용함.
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
                child: Icon(
              Icons.add_a_photo,
              size: width * 0.5,
              color: kPrimaryColor,
            )),
            Padding(padding: EdgeInsets.all(width * 0.048)),
            // DefaultButton(
            // text: "로그인",
            // press: () {
            // Navigator.pushNamed(context, SignInScreen.routeName);
            //  },
            // ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, SignInScreen.routeName);
                },
                child: Text("로그인")),
            Padding(padding: EdgeInsets.all(width * 0.008)),
            Container(
              child: Center(
                child: ButtonTheme(
                  minWidth: width * 0.7,
                  height: height * 0.06,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: RaisedButton(
                    child: Text(
                      '회원가입',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: kPrimaryColor,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()));
                    },
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
