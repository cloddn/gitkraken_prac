////이거 안써요

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class JoinUs extends StatefulWidget {
  @override
  _JoinUsState createState() => _JoinUsState();
}

class _JoinUsState extends State<JoinUs> {
  @override
  Widget build(BuildContext context) {
    Size screenSize=MediaQuery.of(context).size;
    double width = screenSize.width;
    double height= screenSize.height;
    final nameInputController = TextEditingController();
    final nicknameInputController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text('회원가입'),
          elevation: 0,
        ),
        body: Column(
          children: [
            Padding(padding: EdgeInsets.all(width*0.1)),
            Container(
              child: Padding(
                padding: EdgeInsets.only(right: width*0.64),
              child: Text('이름',
                style: TextStyle(
                  fontSize: width*0.048),),
              )//박스에 넣기
            ),
            Padding(
              padding: EdgeInsets.only(left: width*0.1 ,right: width*0.1),
              child: TextField(controller: nameInputController),
            ),
            Padding(padding: EdgeInsets.all(width*0.02)),
            Container(
                child: Padding(
                  padding: EdgeInsets.only(right: width*0.64),
                  child: Text('닉네임',
                    style: TextStyle(
                        fontSize: width*0.048),),
                )//박스에 넣기
            ),
            Padding(
              padding: EdgeInsets.only(left: width*0.1 ,right: width*0.1),
              child: TextField(controller: nicknameInputController),
            ),
          ],
        )
      ),

    );
  }
}
