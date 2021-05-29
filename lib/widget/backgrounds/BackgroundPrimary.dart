import 'package:flutter/material.dart';
import '../../style/style.dart';

class BackgroundPrimary extends StatelessWidget {
  final Widget child;

  const BackgroundPrimary({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        color: primaryLightLeft,
        width: double.infinity,
        height: size.height,
        child: Stack(
          children: <Widget>[
            Container(
              height: size.height,
              width: double.infinity,
              decoration: BoxDecoration(
                color: primaryLightLeft,
              ),
            ),
            child,
          ],
        ));
  }
}
