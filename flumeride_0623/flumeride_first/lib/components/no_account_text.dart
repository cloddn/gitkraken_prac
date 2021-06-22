import 'package:flumeride_first/constants.dart';
import 'package:flumeride_first/screens/sign_up/sign_up_screen.dart';
import 'package:flumeride_first/size_config.dart';
import 'package:flutter/material.dart';


class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "후룸라이드 계정이 없으신가요? ",
          style: TextStyle(fontSize: getProportionateScreenWidth(14)),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            "회원가입",
            style: TextStyle(
              decoration: TextDecoration.underline,
                fontSize: getProportionateScreenWidth(14),
                color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
