import 'package:flutter/material.dart';
import 'package:pruebadelivery/views/Login/formLogin.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        color: Color.fromRGBO(255, 146, 0, 0.6),
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: (screenSize.height * 4) / 100),
        child: Container(
          height: (screenSize.height * 70) / 100,
          width: (screenSize.width * 80) / 100,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white12, width: 3),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              color: Color.fromRGBO(255, 223, 118, 0.4),
              // boxShadow: [
              //   BoxShadow(
              //     offset: Offset(0, 6),
              //     // blurRadius: 5,
              //   ),
              // ],
              shape: BoxShape.rectangle),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(
                      top: ((screenSize.height * 5) / 100),
                      bottom: ((screenSize.height * 4) / 100))),
              const Text(
                'Inicia sesión',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1),
                textAlign: TextAlign.center,
              ),
              Padding(
                  padding: EdgeInsets.only(
                      top: ((screenSize.height * 4) / 100),
                      bottom: ((screenSize.height * 4) / 100))),
              FormLogin()
            ],
          ),
        ),
      ),
    );
  }
}
