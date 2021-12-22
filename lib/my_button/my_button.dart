// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({this.image, this.text, this.color, this.radius, this.onPressed});

  final Widget? image; //?를 붙여 nullable 변수 사용 가능
  final Widget? text;
  final Color? color;
  final double? radius;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 50.0,
      child: RaisedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            image!, //null 여부 검사
            text!,
            Opacity(
              opacity: 0.0,
              child: Image.asset('images/glogo.png'),
            ),
          ],
        ),
        color: color,
        onPressed: onPressed,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(radius!),
        ),
      ),
    );
  }
}
