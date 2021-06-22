import 'package:flumeride_first/model/home_list_model.dart';
import 'package:flumeride_first/screens/home/home_screen.dart';
import 'package:flumeride_first/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flumeride_first/screens/home/components/body.dart';

class HomeItem1 extends StatefulWidget {
  @override
  _HomeItem1State createState() => _HomeItem1State();
  static String routeName = "/home_item1";
}

class _HomeItem1State extends State<HomeItem1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(" "),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Colors.grey,
                Colors.white
              ]
            )
          ),
        ),
      ),
       */
      body: SafeArea(
        child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomRight,
                    stops: [0.1,0.5,0.7,0.9],
                    colors: <Color>[
                      Colors.grey[400],
                      Colors.grey[300],
                      Colors.grey[200],
                      Colors.grey[100]
                    ]
                )
            ),
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: SizeConfig.screenHeight*0.02),
                  IconButton(
                      icon: Icon(Icons.arrow_back_rounded),
                    onPressed: ()
                  {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                  }),
                  SizedBox(height: SizeConfig.screenHeight*0.04),
                  Text(
                    "아이즈원 Meet & Call",
                    style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.01),
                  Text(
                    "2021.05.06 19:00-21:00", style: TextStyle(color: Colors.black45),
                  )
                ],
              )
            ),
          ),
        ),

      ),
    );
  }
}
