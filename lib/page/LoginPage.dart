import 'package:flutter/material.dart';
import 'package:navigator/common/style/MyStyle.dart';
import 'package:navigator/widget/GSYFlexButton.dart';
import 'package:navigator/widget/GSYInputWidget.dart';
import 'package:navigator/common/utils/NavigatorUtils.dart';
class LoginPage extends StatefulWidget {

  static final String sName  = "login";
  @override
  State createState () {
    return new _LoginPageState();
  }
}
class _LoginPageState extends State<LoginPage>{
  var _userName = "";
  var _password = "";

  final TextEditingController userController = new TextEditingController();
  final TextEditingController pwController = new TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    // initParameters();
    userController.value = new TextEditingValue(text: "admin");
    pwController.value = new TextEditingValue(text: "1111");
  }

  initParameters () async {
    
  }
  @override
  Widget build(BuildContext context) {
    return new Container(
        color: Colors.deepOrange,
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
                        new GSYInputWidget(hintText: GSYStrings.login_username_hint_text, iconData: Icons.account_circle, onChanged: (String val) { _userName = val;}, controller: userController,),
                        new Padding(padding: new EdgeInsets.all(10.0)),
                        new GSYInputWidget(hintText: GSYStrings.login_password_hint_text, iconData: Icons.lock_open, obscureText: true, onChanged: (String val) { _password = val;}, controller: pwController,),
                        new Padding(padding: new EdgeInsets.all(8.0)),
                        new GSYFlexButton(
                          text: GSYStrings.login_text,
                          color: Color(GSYColors.primaryValue),
                          textColor: Color(GSYColors.textWhite),
                          onPress: () {
                            // if (_userName == null || _userName.length == 0) {
                            //   showDialog(
                            //     barrierDismissible: false,
                            //     context: context,
                            //     builder: (BuildContext context) {
                            //       return AlertDialog(
                            //         content: Text("帐号或密码不能为空 >_<"),
                            //         actions: <Widget>[
                            //           new FlatButton(child: new Text('确定', style: TextStyle(fontSize: 16.0)), onPressed: () {},)
                            //         ],
                            //       );
                            //     }
                            //   );
                            //   return; 
                            // }
                            // if (_password == null || _password.length == 0) {
                            //   showDialog(
                            //     barrierDismissible: false,
                            //     context: context,
                            //     builder: (BuildContext context) {
                            //       return AlertDialog(
                            //         content: Text("帐号或密码不能为空 >_<"),
                            //         actions: <Widget>[
                            //           new FlatButton(child: new Text('确定', style: TextStyle(fontSize: 16.0)), onPressed: () {},)
                            //         ],
                            //       );
                            //     }
                            //   );
                            //   return; 
                            // }
                            NavigatorUtils.goHome(context);
                          },
                        )
                      ],
                    )))));
  }
}
