import 'dart:io';

import 'package:flumeride_first/constants.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/cupertino.dart';

class ProfilePic extends StatefulWidget {
  const ProfilePic({
    Key key,
  }) : super(key: key);
  @override
  _ProfilePicState createState() => _ProfilePicState();
}

class _ProfilePicState extends State<ProfilePic> {
  File _image;
  final picker = ImagePicker();

  Future getImageCam() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future getImageGall() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 70,
            width:70,
            child: Stack(
              fit: StackFit.expand,
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),//or 15.0
                  child: Container(
                    height: 30.0,
                    width: 30.0,
                    color: Colors.grey,
                    child: Icon(Icons.account_box, color: Colors.white, size: 70.0),
                  ),
                ),
                Positioned(
                  right: -18,
                  bottom: -10,
                  child: SizedBox(
                    height: 40,
                    width: 40,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side: BorderSide(color:Colors.white),
                        ),
                      ),
                      onPressed:()=>_show(context),
                      child: Icon(Icons.add_a_photo, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),

          ),
          Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                      Text('닉네임',style: TextStyle(color: Colors.black87),),
                        Icon(Icons.edit, size: 14, color: Colors.grey)
                ]

                    ),
                    Text('33lab@gmail.com')
                  ],

                ),
              )
          )
        ],
      ),
    );
  }


  //쿠퍼티노 액션시트
  void _show(BuildContext ctx) {
    showCupertinoModalPopup(
        context: ctx,
        builder: (_)=>CupertinoActionSheet(
          actions: [
            CupertinoActionSheetAction(
                onPressed: getImageCam,
                child: Text('카메라')),
            CupertinoActionSheetAction(
                onPressed: getImageGall,
                child: Text('갤러리')),

          ],
          cancelButton: CupertinoActionSheetAction(
            onPressed: ()=>_close(ctx),
            child: Text('취소'),
          ),
        )
    );
  }

  void _close (BuildContext ctx){
    Navigator.of(ctx).pop();
  }
}


