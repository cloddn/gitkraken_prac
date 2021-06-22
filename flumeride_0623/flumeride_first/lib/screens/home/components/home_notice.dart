import 'package:flumeride_first/constants.dart';
import 'package:flumeride_first/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeNotice extends StatelessWidget {
  const HomeNotice({
    Key key,
    @required this.text,
    @required this.icon,
    this.press,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Color(0xFFC2C2C2),
          padding: EdgeInsets.symmetric(vertical: 20),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)),
        ),
        onPressed: press,
        child: Row(
          children: [
            /*
            SvgPicture.asset(
              icon,
              color: kPrimaryColor,
              width: SizeConfig.screenWidth*0.02,
            ),
             */
            SizedBox(width: 20),
            Expanded(child: Text(text,
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(12),
                  color:Colors.black
              ),)
            ),
            Icon(Icons.arrow_forward_ios,
              color: Colors.black,),
            SizedBox(width: 20)
          ],
        ),
      ),
    );
  }
}
