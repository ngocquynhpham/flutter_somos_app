import 'package:flutter/material.dart';

class BackgroundLinearGradient extends StatelessWidget {
  final Widget child;

  const BackgroundLinearGradient({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end:
              Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
          colors: <Color>[
            Color(0xFFF1B1B2),
            Color(0xFFEA8386)
          ], // red to yellow
        ),
      ),
    );
  }
}
