import 'package:flutter/material.dart';
import 'package:somos_app/style/style.dart';
import 'package:somos_app/widget/appbar/AppBarPrimary.dart';
import './ListViewCategory.dart';

class CobrarScreen extends StatefulWidget {
  CobrarScreen({Key key}) : super(key: key);

  @override
  _CobrarScreenState createState() => _CobrarScreenState();
}

class _CobrarScreenState extends State<CobrarScreen>
    with TickerProviderStateMixin {
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: primary,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Container(
          child: Center(
            child: Container(
              height: size.height,
              child: Column(
                children: [
                  AppBarPrimary(
                    title: 'Cobrancas',
                  ),
                  Expanded(flex: 1, child: ListViewCategory()),
                ],
              ),
            ),
            // child: Image.asset('lib/assets/brands/logo-sm.png'),
          ),
        ),
      ),
    );
  }
}
