import 'package:flumeride_first/size_config.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(" ", style: TextStyle(color: Colors.black)),
      ),
      body: Body(),
    );
  }
}