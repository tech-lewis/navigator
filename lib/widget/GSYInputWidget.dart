import 'package:flutter/material.dart';

/// 带图标的输入框
class GSYInputWidget extends StatefulWidget {
  // 是否明文显示
  final bool obscureText;
  final String hintText;

  final IconData iconData;

  GSYInputWidget({Key key, this.hintText, this.iconData, this.obscureText}) : super(key: key);

  @override
  _GSYInputWidgetState createState() => new _GSYInputWidgetState(hintText, iconData, obscureText);
}

/// State for [GSYInputWidget] widgets.
class _GSYInputWidgetState extends State<GSYInputWidget> {

  final bool obscureText;

  final String hintText;

  final IconData iconData;

  final TextEditingController _controller = new TextEditingController();

  _GSYInputWidgetState(this.hintText, this.iconData, this.obscureText) : super();

  @override
  Widget build(BuildContext context) {
    return new TextField(
        controller: _controller,
        obscureText: obscureText != null ? obscureText: false,
        decoration: new InputDecoration(
          hintText: hintText,
          icon: new Icon(iconData),
        ),
      );
  }
}