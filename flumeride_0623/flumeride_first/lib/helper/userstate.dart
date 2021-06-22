import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'usermodels.dart';
import 'package:http/http.dart' as http;

class UserState with ChangeNotifier {
  LocalStorage storage = new LocalStorage('usertoken');

  Future<User> getOrCreateUserAPIData(email,password) async {
    String url ='';
    var response = await http.post(Uri.parse(url),
    headers: {
      "Content-Type":'application/json'//Accept에서 바꿈
    },body: {
          'email': email,
          'password':password,
          //token?이 null이여도 보낸다.
        });
    if (response.statusCode==200) {
      //정상 신호 일때
      var data =User.fromJson(json.decode(response.body) as Map);
      return data;
    } else {
      throw Exception('failed to update user data');
    }
  }
  Future<bool> loginNow(String email, String password) async {
    String url = "http://127.0.0.1:8000/api/login/";
    try {
      http.Response response = await http.post(Uri.parse(url),
          headers: {
            "Content-Type": "application/json",
          },
          body: json.encode({"email": email, "password": password}));
      var data = json.decode(response.body) as Map;
      if (data.containsKey("token")) {//
        storage.setItem("token", data['token']);
        print(storage.getItem('token'));
        return true;
      }
      return false;
    } catch (e) {
      print('e loginNow');
      print(e);
      return false;
    }
  }

  Future<bool> registerNow(String email, String password) async {
    String url = "http://127.0.0.1:8000/api/register/";
    try {
      http.Response response = await http.post(Uri.parse(url),
          headers: {
            "Content-Type": "application/json",
          },
          body: json.encode({"email": email, "password": password})
      );
      var data = json.decode(response.body) as Map;
      // if (data['error'] = false) {
      //   return false;
      // }
      return data['error'];
    } catch (e) {
      print("error register now");
      print(e);
      return true;
    }
  }


}
