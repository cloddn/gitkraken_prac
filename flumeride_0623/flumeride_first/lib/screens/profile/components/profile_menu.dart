import 'package:flumeride_first/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key key,
    @required this.text,
    //@required this.icon,
    this.press,
  }) : super(key: key);

  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 16),
        ),
        onPressed: press,
        child: Row(
          children: [
            SizedBox(width: 20),
            Expanded(child: Text(text,
            style:TextStyle(
              color: Colors.black
            )
            )),
            //Icon(Icons.arrow_forward_ios,
            //color: Colors.black),
          ],
        ),
      ),
    );
  }
}
