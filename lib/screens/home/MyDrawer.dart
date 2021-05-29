import 'package:flutter/material.dart';
import 'package:somos_app/style/style.dart';

class MyDrawer extends StatelessWidget {
  final Widget child;
  const MyDrawer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.5,
      child: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: size.height / 2.7,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: primary,
                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.account_circle,
                      color: Colors.white,
                      size: 50.0,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Michele Cozzolino Junior',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      '83655506104',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Cód. Banco: 655',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Ag.: 1111 / Conta: 6180068063',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: size.width / 4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.content_copy,
                            color: Colors.white,
                            size: 30.0,
                          ),
                          Icon(
                            Icons.redo,
                            color: Colors.white,
                            size: 30.0,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: primary,
                size: 30.0,
              ),
              title: Text(
                'Dados cadastrais',
                style: TextStyle(color: primary, fontSize: 16),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.attach_money,
                color: primary,
                size: 30.0,
              ),
              title: Text(
                'Minhas tarifas',
                style: TextStyle(color: primary, fontSize: 16),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.share,
                color: primary,
                size: 30.0,
              ),
              title: Text(
                'Convidar amigos',
                style: TextStyle(color: primary, fontSize: 16),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.forum,
                color: primary,
                size: 30.0,
              ),
              title: Text(
                'Atendimento',
                style: TextStyle(color: primary, fontSize: 16),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: primary,
                size: 30.0,
              ),
              title: Text(
                'Sair',
                style: TextStyle(color: primary, fontSize: 16),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
