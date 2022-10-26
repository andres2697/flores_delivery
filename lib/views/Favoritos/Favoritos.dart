import 'package:flutter/material.dart';

import '../Sidebar/Sidebar.dart';

class Favoritos extends StatefulWidget {
  Favoritos({Key? key}) : super(key: key);

  @override
  State<Favoritos> createState() => _FavoritosState();
}

class _FavoritosState extends State<Favoritos> {
  @override
  Widget build(BuildContext context) {
    var titulo = 'Hola desde Favoritos';
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
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
          ],
        ),
        drawer: Sidebar(),
        body: SafeArea(
          child: Center(
            child: Text(titulo),
          ),
        ));
  }
}
