import 'package:flutter/material.dart';
import 'package:somos_app/style/style.dart';
import 'package:somos_app/widget/appbar/AppBarPrimary.dart';
import 'package:somos_app/widget/buttons/ButtonCircleGradient.dart';
import 'package:somos_app/widget/input/TextFieldContainer.dart';

class DepositarScreen extends StatefulWidget {
  DepositarScreen({Key key}) : super(key: key);

  @override
  _DepositarScreenState createState() => _DepositarScreenState();
}

class _DepositarScreenState extends State<DepositarScreen>
    with TickerProviderStateMixin {
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: primary,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Container(
            child: Center(
              child: Stack(
                children: [
                  // App Bar
                  Positioned(
                    child: AppBarPrimary(
                      title: "Depositar",
                    ),
                    top: 0,
                    left: 0,
                  ),
                  // Bottom
                  Positioned(
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ButtonCircleGradient(
                          child: Text(
                            'Gerar\nboleto',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          height: 90,
                          width: 90,
                          onPressed: () => {},
                        )
                      ],
                    ),
                    bottom: 30,
                    right: 30,
                  ),
                  // Form
                  Positioned(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: size.width,
                      height: size.height,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 30),
                            child: Text(
                              'Digite o valor',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Container(
                            child: TextFieldContainer(
                              child: StreamBuilder(
                                // stream: bloc.userStream,
                                builder: (context, snapshot) => TextField(
                                  keyboardType: TextInputType.number,
                                  cursorColor: primary,
                                  decoration: InputDecoration(
                                    hintText: "Typing ....",
                                    hintStyle: TextStyle(color: grey),
                                    border: InputBorder.none,
                                    icon: Text(
                                      'R\$',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 30),
                            child: Text(
                              'Identifiador no comprovante',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Container(
                            child: TextFieldContainer(
                              child: StreamBuilder(
                                // stream: bloc.userStream,
                                builder: (context, snapshot) => TextField(
                                  // controller: _userController,
                                  cursorColor: primary,
                                  decoration: InputDecoration(
                                    hintText: "Typing ....",
                                    hintStyle: TextStyle(color: grey),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    top: 300,
                    right: 10,
                    left: 10,
                    bottom: 300,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
