import 'package:flutter/material.dart';
import 'package:somos_app/screens/home/HomeScreen.dart';
import 'package:somos_app/style/style.dart';
import 'package:somos_app/widget/buttons/ButtonCircleGradient.dart';
import 'package:somos_app/widget/input/TextFieldContainer.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with TickerProviderStateMixin {
  AnimationController _controllerJ;

  bool isLoading = false;
  // LoginBloc bloc = new LoginBloc();

  bool _showPass = false;
  // TextEditingController _userController = new TextEditingController();
  // TextEditingController _passController = new TextEditingController();

  BuildContext scaffoldContext;

  @override
  void initState() {
    // TODO: implement initState
    _controllerJ = AnimationController(
      vsync: this,
      duration: Duration(seconds: 10),
    )..repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controllerJ.dispose();
    super.dispose();
  }

  @override
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
                    child: Container(
                      width: size.width,
                      height: size.width / 2.5,
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
                        child: Image.asset(
                          'lib/assets/brands/logo.png',
                          height: 60, //MediaQuery.of(context).size.height,
                        ),
                      ),
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
                        Container(
                          width: size.width / 1.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                child: Image(
                                  image: AssetImage(
                                      'lib/assets/images/fingerprint_white.png'),
                                  height: 70,
                                ),
                                onTap: () => showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    title:
                                        const Text('Confirme sua identidade'),
                                    content: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              'lib/assets/images/fingerprint_blue.png'),
                                          height: 70,
                                        ),
                                        Text(
                                          'Toque no sensor',
                                          style: TextStyle(
                                              fontStyle: FontStyle.italic),
                                        )
                                      ],
                                    ),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'Cancel'),
                                        child: const Text('Cancelar'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              ButtonCircleGradient(
                                child: Text('Continuar'),
                                height: 90,
                                width: 90,
                                onPressed: () => {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) {
                                      return HomeScreen();
                                    }),
                                  ),
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    bottom: 30,
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
                              'Email',
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
                                    hintText: "Yourname@somos",
                                    hintStyle: TextStyle(color: grey),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 30),
                            child: Text(
                              'Password',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          TextFieldContainer(
                            child: StreamBuilder(
                              // stream: bloc.passStream,
                              builder: (context, snapshot) => TextField(
                                obscureText: !_showPass,
                                // controller: _passController,
                                cursorColor: primary,
                                decoration: InputDecoration(
                                  hintText: "Your pass word",
                                  hintStyle: TextStyle(color: grey),
                                  suffixIcon: GestureDetector(
                                    onTap: onToggleShowPass,
                                    child: Icon(
                                      !_showPass
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      color: primary,
                                      size: 20,
                                    ),
                                  ),
                                  border: InputBorder.none,
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
              // child: Image.asset('lib/assets/brands/logo-sm.png'),
            ),
          ),
        ),
      ),
    );
  }

  void onToggleShowPass() {
    setState(() {
      _showPass = !_showPass;
    });
  }
}
