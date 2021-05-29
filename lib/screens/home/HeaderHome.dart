import 'package:flutter/material.dart';
import 'package:somos_app/style/style.dart';

class HeaderHome extends StatelessWidget {
  final String name;
  final String title;
  final Function openDraw;

  const HeaderHome({Key key, this.name, this.title, this.openDraw})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.width / 1.5,
      padding: EdgeInsets.only(left: 30, right: 30, top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(100),
          bottomLeft: Radius.circular(100),
        ),
        gradient: LinearGradient(
          colors: <Color>[primaryLightLeft, primaryLightRight],
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: openDraw,
                  child: Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 30.0,
                  ),
                ),
              ],
            ),
            Image.asset(
              'lib/assets/brands/logo.png',
              height: 30, //MediaQuery.of(context).size.height,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              title,
              style: TextStyle(
                  color: primary, fontWeight: FontWeight.w800, fontSize: 14),
            ),
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              width: 30,
              height: 30,
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
                  child: Text(
                    'R\$',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
