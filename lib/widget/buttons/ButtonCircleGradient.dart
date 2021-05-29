import 'package:flutter/material.dart';
import 'package:somos_app/style/style.dart';

class ButtonCircleGradient extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;
  final Function onPressed;

  const ButtonCircleGradient({
    Key key,
    @required this.child,
    this.width,
    this.height,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: LinearGradient(
          colors: <Color>[
            primaryButtonGradientLeft,
            primaryButtonGradientRight
          ],
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: onPressed,
            child: Center(
              child: child,
            )),
      ),
    );
  }
}
