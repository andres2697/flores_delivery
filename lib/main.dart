import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

//------------------------------------------------------------------ //
//              Carga de las Vistas del proyecto                     //
//------------------------------------------------------------------ //
import 'package:pruebadelivery/views/Home/home.dart';
import 'package:pruebadelivery/views/Login/login.dart';
// ----------------------------------------------------------------- //

//------------------------------------------------------------------ //
//           Carga de widgets (Plugins) del proyecto                 //
//------------------------------------------------------------------ //
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:pruebadelivery/views/SplashScreen/splashScreen.dart';
//------------------------------------------------------------------ //

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const Delibery());
}

Map<String, WidgetBuilder> routes = {
  "/home": (context) => Home(),
  "/login": (context) => Login(),
  "/splashScreen": (context) => SplashScreen(),
};

class Delibery extends StatelessWidget {
  const Delibery({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Delibery Prueba',
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: SplashScreen(),
        nextScreen: Login(),
        duration: 1500,
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.leftToRightWithFade,
        splashIconSize: 300,
        backgroundColor: Color.fromARGB(255, 255, 223, 118),
      ),
    );
  }
}
