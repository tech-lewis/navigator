import 'dart:async';

import 'package:flutter/material.dart';
import 'package:navigator/page/LoginPage.dart';

class WelcomePage extends StatelessWidget {
  static final String sName = "/welcome";
  @override
  Widget build(BuildContext context) {
    // 一秒以后将任务添加至event队列
    new Future.delayed(const Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (context) {
        return new LoginPage();
      }));
    });
    return new Container(
      color: Colors.deepOrange,
      child: new Center(
        child: new Text("这是Login启动页面", style: new TextStyle(color: Colors.black, fontSize:22.0)),
      ),
    );
  }
}
