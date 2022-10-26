import 'package:flutter/material.dart';
import 'package:pruebadelivery/views/Carrito/Carrito.dart';
import 'dart:math';
import 'package:pruebadelivery/views/MisCompras/MisCompras.dart';
import 'package:pruebadelivery/views/Favoritos/Favoritos.dart';
import 'package:pruebadelivery/views/Home/home.dart';

Map<String, WidgetBuilder> routes = {
  "/home": (context) => Home(),
  "/favoritos": (context) => Favoritos(),
  "/misCompras": (context) => MisCompras(),
  "/carrito": (context) => Carrito(),
  // "/correctivo": (context) => const Correctivo(),
  // "/tema": (context) => const Tema(),
  // "/avisos": (context) => const Avisos(),
};

class Sidebar extends StatefulWidget {
  Sidebar({Key? key}) : super(key: key);

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Drawer(
        child: Material(
      color: const Color(0xFF101D2D),
      child: ListView(
        children: <Widget>[
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                child: const Icon(
                  Icons.perm_identity,
                  color: Color(0xFF101D2D),
                  size: 28,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                child: const Text(
                  'Bienvenido, [usuario].',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          elementoMenuUsuario(
              texto: 'Inicio',
              icono: const Icon(
                Icons.home,
                color: Colors.white,
                size: 18,
              ),
              boton: 1),
          elementoMenuUsuario(
              texto: 'Favoritos',
              icono: const Icon(
                Icons.favorite,
                color: Colors.white,
                size: 18,
              ),
              boton: 2),
          elementoMenuUsuario(
              texto: 'Mi carrito',
              icono: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
                size: 18,
              ),
              boton: 3),
          elementoMenuUsuario(
              texto: 'Mis compras',
              icono: const Icon(
                Icons.shop,
                color: Colors.white,
                size: 18,
              ),
              boton: 4),
          const Padding(padding: EdgeInsets.all(15)),
          Container(
            alignment: Alignment.center,
            // padding: const EdgeInsets.only(left: 10),
            child: const Text(
              'Nuestros Productos',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const Divider(
            height: 40,
            indent: 20,
            endIndent: 30,
            thickness: 1.5,
            color: Colors.white,
          ),
          // const Padding(padding: EdgeInsets.all(5)),
          elementoMenuUsuario(
              texto: 'Arreglos florales artificiales',
              icono: const Icon(
                Icons.local_florist,
                color: Colors.white,
                size: 18,
              ),
              boton: 1),
          elementoMenuUsuario(
              texto: 'Guías navideñas',
              icono: const Icon(
                Icons.local_florist_outlined,
                color: Colors.white,
                size: 18,
              ),
              boton: 1),
          elementoMenuUsuario(
              texto: 'Coronas florales artificiales',
              icono: const Icon(
                Icons.local_florist,
                color: Colors.white,
                size: 18,
              ),
              boton: 1),
          elementoMenuUsuario(
              texto: 'Ramos',
              icono: const Icon(
                Icons.local_florist_outlined,
                color: Colors.white,
                size: 18,
              ),
              boton: 1),
        ],
      ),
    ));
  }

  Widget elementoMenuUsuario(
      {required String texto, required Icon icono, required int boton}) {
    const color = Colors.white;
    const hoverColor = Color(0xFF2166E5);
    var media = MediaQuery.of(context);

    return ListTile(
        leading: icono,
        title: Text(texto,
            style: const TextStyle(
                color: color,
                fontSize: 15,
                fontWeight: FontWeight.w600,
                letterSpacing: 2)),
        hoverColor: hoverColor,
        onTap: () {
          switch (boton) {
            case 1:
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Home(), fullscreenDialog: true),
                  (Route<dynamic> route) => false);
              break;
            case 2:
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Favoritos(),
                      fullscreenDialog: true),
                  (Route<dynamic> route) => false);
              break;
            case 3:
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Carrito(), fullscreenDialog: true),
                  (Route<dynamic> route) => false);
              break;
            case 4:
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MisCompras(),
                      fullscreenDialog: true),
                  (Route<dynamic> route) => false);
              break;
            // case 8:
            //     Navigator.push(
            //       context, MaterialPageRoute(builder: (BuildContext context) => const Loading(), fullscreenDialog: true)
            //     );
            //     // espera();
            //     // logout();
            //   break;
          }
        });
  }
}
