import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({Key key, this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.blueGrey[900],
          child: Opacity(
            opacity: 0.6,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  colorFilter:
                      ColorFilter.mode(Colors.blueGrey[900], BlendMode.multiply),
                  image: AssetImage('images/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        child,
      ],
    );
  }
}
