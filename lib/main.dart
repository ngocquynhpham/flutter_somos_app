import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:somos_app/screens/splash/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'Win-Core',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

// class AnimatedScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: primary,
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: Image.asset(
//           'lib/assets/splash.png',
//           fit: BoxFit.cover,
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//         ),
//       ),
//     );
//   }
//}
