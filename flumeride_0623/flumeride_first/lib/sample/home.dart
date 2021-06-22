import 'package:flumeride_first/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);
  //static String routeName = "/home";
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, String>> datas=[];


  @override

  void initState() {

    super.initState();
    datas = [
      {
        "title" : "공지사항",
      },
      {
        "title" : "방탄소년단 커밍쑨"
      },
      {
        "title": "블랙핑크 커밍쑨"
      },
      {
        "title": "비투비 커밍쑨"
      },
      {
        "title": "아이유 커밍쑨"
      },
      {
        "title": "아이즈원 커밍쑨"
      },
      {
        "title": "움하하 커밍쑨"
      },
      {
        "title": "와하핰 커밍쑨"
      }
    ];
  }

  Widget _appbarWidget() {
    return AppBar(
            //leading: 좌측 끝 버튼 여기서는 없음
            title: GestureDetector(
              onTap: () {
                print("logo");
              },
              child: Row(
                children: [
                  Icon(Icons.add_a_photo, color:kPrimaryColor),
                  Text(' FlumeRide', style: TextStyle(color: Colors.black),),
                ],
              ),
            ),
            elevation: 1,
            actions: [ //우측버튼
              IconButton(
                  icon: SvgPicture.asset(
                    "assets/svg/bell.svg",
                    width: 22,
                    color: kPrimaryColor,
                  ),
                  onPressed: (){}),
              IconButton(
                icon: Icon(Icons.account_circle, color: kPrimaryColor),
                onPressed: () {

                },
              ),
            ],
            bottom: TabBar(
              tabs: [
                Tab(text:"Upcoming"),
                Tab(text:"Previous")
              ],
              labelColor: Colors.black,
            ),
          );
  }

  Widget _bodyWidget(){
    return TabBarView(
      children: [
        ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 10),
            itemBuilder: (BuildContext _context, int index){
              return Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                height: 100,
                child:Row(children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(left:20),
                      color: kPrimaryColor,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(top:25)),
                          Text(datas[index]['title'],
                          style: TextStyle(fontSize: 18, color: Colors.white, fontWeight:FontWeight.w700)),
                        ],
                      ),
                    ),
                  )
                ],
                )
              );
            },
        separatorBuilder:(BuildContext _context, int index){
          return Container(height: 1,color: Colors.black.withOpacity(0.0));
          },
          itemCount: datas?.length,
            ),
        Center(
          child: Text('준비중', style: TextStyle(fontSize: 50))
        ),
      ],
    );
  }



    @override
    Widget build(BuildContext context){
      return SafeArea(
        child: DefaultTabController(
          // 탭의 수 설정
            length: 2,
                child: Scaffold(
                  appBar: _appbarWidget(),
                  body: _bodyWidget(),
                )
          )
      );
    }
}
