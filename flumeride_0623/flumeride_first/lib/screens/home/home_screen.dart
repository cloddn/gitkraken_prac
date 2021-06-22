import 'package:flumeride_first/constants.dart';
import 'package:flumeride_first/screens/Notice/notice_screen.dart';
import 'package:flumeride_first/screens/home/components/body.dart';
import 'package:flumeride_first/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home_screen";
  @override
  Widget build(BuildContext context){
    return SafeArea(
        child: DefaultTabController(
          // 탭의 수 설정
            length: 2,
            child: Scaffold(
              appBar:
              AppBar(
                //leading: 좌측 끝 버튼 여기서는 없음
                title: GestureDetector(
                  onTap: () {
                    print("logo");
                  },
                  child: Row(
                    children: [
                      Icon(Icons.add_a_photo, color:kPrimaryColor),
                      Text(' FlumeRide', style: TextStyle(color: Colors.black),),
                    ],
                  ),
                ),
                elevation: 1,
                actions: [ //우측버튼
                  IconButton(
                      icon: SvgPicture.asset(
                        "assets/svg/bell.svg",
                        width: 22,
                        color: kPrimaryColor,
                      ),
                      onPressed: (){
                      }),
                  IconButton(
                    icon: Icon(Icons.account_circle, color: kPrimaryColor),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder:(context)=>ProfileScreen()));
                    },
                  ),
                ],
                bottom: TabBar(
                  tabs: [
                    Tab(text:"Upcoming"),
                    Tab(text:"Previous")
                  ],
                  labelColor: Colors.black,
                ),
              ),
              body: Body(),
            )
        )
    );
  }
}

/*
Widget _appbarWidget() {
  return AppBar(
    //leading: 좌측 끝 버튼 여기서는 없음
    title: GestureDetector(
      onTap: () {
        print("logo");
      },
      child: Row(
        children: [
          Icon(Icons.add_a_photo, color:kPrimaryColor),
          Text(' FlumeRide', style: TextStyle(color: Colors.black),),
        ],
      ),
    ),
    elevation: 1,
    actions: [ //우측버튼
      IconButton(
          icon: SvgPicture.asset(
            "assets/svg/bell.svg",
            width: 22,
            color: kPrimaryColor,
          ),
          onPressed: (){}),
      IconButton(
        icon: Icon(Icons.account_circle, color: kPrimaryColor),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder:(context)=>ProfileScreen()));
        },
      ),
    ],
    bottom: TabBar(
      tabs: [
        Tab(text:"Upcoming"),
        Tab(text:"Previous")
      ],
      labelColor: Colors.black,
    ),
  );
}
*/
