import 'package:flumeride_first/components/default_button.dart';
import 'package:flumeride_first/constants.dart';
import 'package:flumeride_first/screens/sign_in/sign_in_screen.dart';
import 'package:flumeride_first/screens/sign_up/sign_up_screen.dart';
import 'package:flumeride_first/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  Future<String> callPermissions() async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.camera,
    ].request();

    if (statuses.values.every((element) => element.isGranted)) {
      return 'success';
    }

    return 'failed';
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Icon(Icons.add_a_photo,
                      size: SizeConfig.screenWidth*0.5,
                      color: kPrimaryColor)),
              Padding(
                padding: EdgeInsets.all(SizeConfig.screenWidth*0.048),
              ),
              DefaultButton(
                text: "로그인",
                press: () {
                  Navigator.pushNamed(context, SignInScreen.routeName);
                },
              ),
              Padding(padding: EdgeInsets.all(SizeConfig.screenWidth*0.008),
              ),
              DefaultButton(
                text: "회원가입",
                press: () {
                  Navigator.pushNamed(context, SignUpScreen.routeName);
                },
              ),
              FutureBuilder(
                future: callPermissions(),
                builder:
                    (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  if (snapshot.hasData) {
                    return Text(snapshot.data);
                  }

                  return CircularProgressIndicator();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

