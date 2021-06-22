
import 'package:flumeride_first/screens/splash/components/body.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';

class SplashScreen extends StatelessWidget {

  static String routeName = "/splash";
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
