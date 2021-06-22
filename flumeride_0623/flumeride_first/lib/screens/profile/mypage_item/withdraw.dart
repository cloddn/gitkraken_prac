import 'package:flumeride_first/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Withdraw extends StatefulWidget {
  @override
  _WithdrawState createState() => _WithdrawState();
  static String routeName = "/withdraw";
}

class _WithdrawState extends State<Withdraw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('회원탈퇴'),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('탈퇴하게 되면 아티스트와 연결이 끊어집니다.',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                  Text("\n\n 정말 탈퇴하시겠습니까?", style: TextStyle(fontWeight:FontWeight.bold, fontSize: 16),),
                  SizedBox(height: SizeConfig.screenHeight * 0.08),
                  TextButton(
                      onPressed:(){
                        _showAlert(title:"탈퇴하시겠습니까?",message: "모든 정보는 복구할 수 없습니다.");
                      },
                      child: Text('탈퇴하기', style: TextStyle(fontSize: 12,color: Colors.grey),)
                  ),
                ]
            ),
          ),

        ),

      ),
    );
  }

  void _showAlert({String title, String message}) {
    showCupertinoDialog(context: context, builder: (context) {
      return CupertinoAlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          CupertinoDialogAction(isDefaultAction: true, child: Text("확인"), onPressed: () {
            Navigator.pop(context);
          })
        ],
      );
    });
  }
}
