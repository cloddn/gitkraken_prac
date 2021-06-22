import 'package:flumeride_first/size_config.dart';
import 'package:flutter/material.dart';

class NoticeScreen extends StatefulWidget {
  @override
  _NoticeScreenState createState() => _NoticeScreenState();
  static String routeName = "/notice_screen";
}

class _NoticeScreenState extends State<NoticeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('공지사항'),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: 
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("공지사항", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("공지사항 어쩌구 저쩌구....")

          ]
          ),
          ),
          
        ),

      ),
    );
  }
}
