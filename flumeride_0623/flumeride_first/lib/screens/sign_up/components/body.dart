//<<<<<<< HEAD:flumeride_first/lib/screens/sign_up/components/body.dart

//=======
//>>>>>>> develop:flumeride_first/lib/sign_up/components/body.dart
import 'package:flumeride_first/components/socal_card.dart';
import 'package:flumeride_first/constants.dart';
import 'package:flumeride_first/screens/sign_up/components/sign_up_form.dart';
import 'package:flumeride_first/size_config.dart';
import 'package:flutter/material.dart';
//<<<<<<< HEAD:flumeride_first/lib/screens/sign_up/components/body.dart

//=======
//import 'file:///D:/flutterproject/flumeride_first/lib/sign_up/components/sign_up_form.dart';
import 'package:flumeride_first/components/socal_card.dart';
//>>>>>>> develop:flumeride_first/lib/sign_up/components/body.dart

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04), // 4%
                Text("회원가입", style: headingStyle),
                Text(
                  " ",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignUpForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/apple-logo.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/kakao-logo.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/naver-logo.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                Text(
                  ' ',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
