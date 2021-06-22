import 'package:flumeride_first/screens/profile/mypage_item/withdraw.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  var _lights=false;
  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (OverscrollIndicatorNotification overscroll) {
        overscroll.disallowGlow();
        return; },
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            ProfilePic(),
            SizedBox(height: 20),
            Text('내 계정', style: TextStyle(color:Colors.black,fontWeight: FontWeight.w800, fontSize: 16),textAlign: TextAlign.start),
            ProfileMenu(
              text: "비밀번호 변경",
              press: () => {},
            ),
            ProfileMenu(
              text: "로그아웃",
              press: () {},
            ),

            ProfileMenu(
              text: "회원탈퇴",
              press: () {
                Navigator.pushNamed(context, Withdraw.routeName);
              },
            ),
            Text('앱 설정', style: TextStyle(color:Colors.black,fontWeight: FontWeight.w800, fontSize: 16),textAlign: TextAlign.start),
            Row(
              children: [
                Expanded(
                  child: ProfileMenu(
                    text: "알림 허용",
                    press: () {},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: CupertinoSwitch(
                      value: _lights,
                      onChanged: (bool value) {
                        setState((){
                          _lights=value;
                        });
                      }),
                )
              ],
            ),
            ProfileMenu(
              text: "Language Setting",
              press: () {},
            ),
            Text('앱 정보', style: TextStyle(color:Colors.black,fontWeight: FontWeight.w800, fontSize: 16),textAlign: TextAlign.start),
            ProfileMenu(
              text: "이용 약관",
              press: () {},
            ),
            ProfileMenu(
              text: "오픈소스 사용정보",
              press: () {},
            ),
            ProfileMenu(
              text: "개인정보 취급방침",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}