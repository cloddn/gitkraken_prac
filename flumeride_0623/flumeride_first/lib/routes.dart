

import 'package:flumeride_first/screens/Notice/notice_screen.dart';
import 'package:flumeride_first/screens/chat/chat_screen.dart';
import 'package:flumeride_first/screens/forgot_password/forgot_password_screen.dart';
import 'package:flumeride_first/screens/home/home_screen.dart';
import 'package:flumeride_first/screens/home_item/home_item1.dart';
import 'package:flumeride_first/screens/profile/mypage_item/withdraw.dart';
import 'package:flumeride_first/screens/profile/profile_screen.dart';
import 'package:flumeride_first/screens/sign_in/sign_in_screen.dart';
import 'package:flumeride_first/screens/sign_up/sign_up_screen.dart';
import 'package:flumeride_first/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';


// 사용할 모든 routes name
// All our routes will be available here

final Map<String, WidgetBuilder> routes = {
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  //CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  //OtpScreen.routeName: (context) => OtpScreen(),
  //DetailsScreen.routeName: (context) => DetailsScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  SplashScreen.routeName: (context) => SplashScreen(),
  HomeItem1.routeName: (context)=>HomeItem1(),
  ChatScreen.routeName: (context)=>ChatScreen(),
  NoticeScreen.routeName: (context)=>NoticeScreen(),
  Withdraw.routeName: (context)=>Withdraw(),
};
