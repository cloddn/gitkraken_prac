import 'package:flutter/material.dart';
import 'package:flumeride_first/size_config.dart';
import 'components/body.dart';

class SignInScreen extends StatelessWidget {

  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(" "),
      ),
      body: Body(),
    );
  }
}
