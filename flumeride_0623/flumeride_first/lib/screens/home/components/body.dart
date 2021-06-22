import 'dart:math';

import 'package:flumeride_first/model/home_list_model.dart';
import 'package:flumeride_first/screens/Notice/notice_screen.dart';
import 'package:flumeride_first/screens/chat/chat_screen.dart';
import 'package:flumeride_first/screens/home/components/home_menu.dart';
import 'package:flumeride_first/screens/home/components/home_notice.dart';
import 'package:flumeride_first/screens/home_item/home_item1.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override


  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        RefreshIndicator(
          onRefresh: refreshList,
          child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (OverscrollIndicatorNotification overscroll) {
              overscroll.disallowGlow();
              return;
            },
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  HomeNotice(
                    text: "공지사항",
                    icon: "assets/icons/User Icon.svg",
                    press: () {
                      Navigator.pushNamed(context, NoticeScreen.routeName);
                    },
                  ),
                  HomeMenu(
                    text: "아이즈원",
                    icon: "assets/icons/Bell.svg",
                    press: () {
                      Navigator.pushNamed(context, HomeItem1.routeName);
                    },
                  ),
                  HomeMenu(
                    text: shows[2]["title"],
                    icon: "assets/icons/Settings.svg",
                    press: () {
                      Navigator.pushNamed(context, ChatScreen.routeName);
                    },
                  ),
                  HomeMenu(
                    text: "세븐틴",
                    icon: "assets/icons/Question mark.svg",
                    press: () {},
                  ),
                  HomeMenu(
                    text: "강다니엘",
                    icon: "assets/icons/Log out.svg",
                    press: () {},
                  ),
                  HomeMenu(
                    text: "레드벨벳",
                    icon: "assets/icons/Log out.svg",
                    press: () {},
                  ),
                  HomeMenu(
                    text: "하이라이트",
                    icon: "assets/icons/Log out.svg",
                    press: () {},
                  ),
                  HomeMenu(
                    text: "스트레이키즈",
                    icon: "assets/icons/Log out.svg",
                    press: () {},
                  ),
                  HomeMenu(
                    text: "더보이즈",
                    icon: "assets/icons/Log out.svg",
                    press: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
        Center(
            child: Text('준비중', style: TextStyle(fontSize: 50))
        ),

      ],
    );
  }

  Future<Null> refreshList() async {
    await Future.delayed(Duration(seconds: 0)); //thread sleep 같은 역할을 함.
    //새로운 정보를 그려내는 곳
    setState(() {
    });
    return null;
  }
}
