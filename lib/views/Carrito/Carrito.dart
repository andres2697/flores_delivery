import 'package:flutter/material.dart';

import '../Sidebar/Sidebar.dart';

class Carrito extends StatefulWidget {
  Carrito({Key? key}) : super(key: key);

  @override
  State<Carrito> createState() => _CarritoState();
}

class _CarritoState extends State<Carrito> {
  @override
  Widget build(BuildContext context) {
    var titulo = 'Hola desde Mi carrito';
    var colorNaranja = const Color(0xFFFF9200);

    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: colorNaranja,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  padding: const EdgeInsets.only(bottom: 1.0),
                  icon: const Icon(Icons.reorder));
            },
          ),
        ),
        drawer: Sidebar(),
        body: SafeArea(
          child: Center(
            child: Text(titulo),
          ),
        ));
  }
}
