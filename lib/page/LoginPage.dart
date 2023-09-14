import 'package:flutter/material.dart';
import 'package:navigator/common/style/MyStyle.dart';
import 'package:navigator/widget/GSYFlexButton.dart';
import 'package:navigator/widget/GSYInputWidget.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        color: Colors.orange,
        child: new Center(
            child: new Card(
                elevation: 5.0,
                shape: new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
                color: Color(GSYColors.cardWhite),
                margin: const EdgeInsets.all(20.0),
                child: new Padding(
                    padding: new EdgeInsets.only(left: 30.0, top: 60.0, right: 30.0, bottom: 80.0),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Image(image: new AssetImage('static/images/logo.png'), width: 80.0, height: 80.0),
                        new Padding(padding: new EdgeInsets.all(10.0)),
                        new GSYInputWidget(hintText: "11111", iconData: Icons.account_circle),
                        new Padding(padding: new EdgeInsets.all(10.0)),
                        new GSYInputWidget(hintText: "11111", iconData: Icons.lock_open),
                        new Padding(padding: new EdgeInsets.all(8.0)),
                        new GSYFlexButton(
                          text: GSYStrings.login_text,
                          color: Color(GSYColors.primaryValue),
                          textColor: Color(GSYColors.textWhite),
                          onPress: () {},
                        )
                      ],
                    )))));
  }
}
