import 'package:flutter/material.dart';
import 'package:somos_app/screens/home/HeaderHome.dart';
import 'package:somos_app/screens/home/ListViewCategoryHome.dart';
import 'package:somos_app/screens/home/MyDrawer.dart';
import 'package:somos_app/style/style.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  BuildContext scaffoldContext;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Drawer(
        child: MyDrawer(),
      ),
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
                  HeaderHome(
                    name: 'Michele Cozzolino Junior',
                    title: 'Bem-vindo',
                    openDraw: () => {_scaffoldKey.currentState.openEndDrawer()},
                  ),
                  Expanded(flex: 1, child: ListViewCategoryHome()),
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
