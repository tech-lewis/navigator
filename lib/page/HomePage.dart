import 'package:flutter/material.dart';
import 'package:navigator/game.dart';
import 'package:navigator/widget/GSYTabBarWidget.dart';

class HomePage extends StatelessWidget {
  static final String sName  = "home";
  static var gameTitle = '';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new GSYTabBarWidget(
        type: GSYTabBarWidget.BOTTOM_TAB,
        tabItems: [
          new Tab(icon: new Icon(Icons.home)),
          new Tab(icon: new Icon(Icons.games)),
          new Tab(icon: new Icon(Icons.settings)),
        ],
        tabViews: [
          new Icon(Icons.home),
          new MyGame(),
          new Icon(Icons.settings),
        ],
        backgroundColor: Colors.deepOrange,
        indicatorColor: Colors.white,
        title: gameTitle);
  }
}
