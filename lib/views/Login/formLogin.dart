import 'package:flutter/material.dart';
import 'package:pruebadelivery/views/Home/home.dart';

Map<String, WidgetBuilder> routes = {
  "/home": (context) => Home(),
};

class FormLogin extends StatefulWidget {
  FormLogin({Key? key}) : super(key: key);

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  late TextEditingController _usuario;
  late TextEditingController _password;

  @override
  void initState() {
    super.initState();
    _usuario = TextEditingController();
    _password = TextEditingController();
  }

  @override
  void dispose() {
    _usuario.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        campoUsuario(screenSize),
        Padding(
            padding: EdgeInsets.only(
                top: ((screenSize.height * 3) / 100),
                bottom: ((screenSize.height * 2) / 100))),
        campoContrasenia(screenSize),
        Padding(
            padding: EdgeInsets.only(
                top: ((screenSize.height * 4) / 100),
                bottom: ((screenSize.height * 3) / 100))),
        botonEntrar(context, screenSize)
      ],
    );
  }

  Widget campoUsuario(screenSize) {
    return Container(
        height: 40,
        width: screenSize.width - 150,
        child: TextField(
            controller: _usuario,
            cursorColor: Colors.black,
            style: const TextStyle(
              letterSpacing: 1,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.none,
              color: Colors.black,
            ),
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.perm_identity,
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              // hintText: 'Usuario',
              labelText: 'Usuario',
              labelStyle: TextStyle(decoration: TextDecoration.none),
              fillColor: Color.fromRGBO(165, 158, 140, 0.1),
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(165, 158, 140, 0.1), width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                borderSide: BorderSide(
                  color: Color.fromRGBO(165, 158, 140, 0.2),
                  width: 1,
                ),
              ),
            )));
  }

  Widget campoContrasenia(screenSize) {
    return Container(
        height: 40,
        width: screenSize.width - 150,
        child: TextField(
            controller: _password,
            cursorColor: Colors.black,
            style: const TextStyle(
              letterSpacing: 1,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.none,
              color: Colors.black,
            ),
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.lock,
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              // hintText: 'Contraseña',
              labelText: 'Contraseña',
              labelStyle: TextStyle(
                decoration: TextDecoration.none,
              ),
              fillColor: Color.fromRGBO(165, 158, 140, 0.1),
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(165, 158, 140, 0.1), width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                borderSide: BorderSide(
                  color: Color.fromRGBO(165, 158, 140, 0.2),
                  width: 1,
                ),
              ),
            )));
  }

  Widget botonEntrar(context, screenSize) {
    Color fondo = const Color(0xFF96AC60);
    return Container(
      // padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 50),
      child: MouseRegion(
        // onHover: (event) => {_updateColor(event)},
        child: TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
                top: 10.0, bottom: 10, left: 30, right: 30),
            backgroundColor: fondo,
            textStyle: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, letterSpacing: 1.2),
            primary: Colors.white,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0))),
          ),
          onPressed: () {
            // Navegacion a página Home
            //sin opción a retornar a la página previa.
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Home()),
                (Route<dynamic> route) => false);
          },
          child: const Text('Entrar'),
        ),
      ),
    );
  }
}
