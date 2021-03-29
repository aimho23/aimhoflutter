import 'package:flutter/material.dart';
import 'package:signin/login_app/login.dart';

class MyButton extends StatelessWidget {
  MyButton({this.image, this.text, this.color, this.radius, this.onpressed});

  final Widget image;
  final Widget text;
  final Color color;
  final double radius;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    final Login login = new Login();
    login.buildButton();

    return ButtonTheme(
      height: 50.0,
      child: RaisedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            image,
            text,
            Opacity(
              opacity: 0.0,
              child: Image.asset('images/glogo.png'),
            ),
          ],
        ),
        color: color,
        onPressed: onpressed,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
      ),
    );
  }
}
