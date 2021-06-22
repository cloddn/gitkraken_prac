import 'package:flumeride_first/Theme.dart';
import 'package:flumeride_first/helper/userstate.dart';
import 'package:flumeride_first/routes.dart';
import 'package:flumeride_first/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalStorage storage = LocalStorage('usertoken');
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => UserState()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FlumeRide',
        theme: theme(),
        initialRoute: SplashScreen.routeName,
        routes: routes,
      ),
    );
  }
}
