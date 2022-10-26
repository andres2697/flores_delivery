import 'package:flutter/material.dart';
import 'package:pruebadelivery/views/Home/carrusel.dart';
import 'package:pruebadelivery/views/Sidebar/Sidebar.dart';

final List<String> serviciosImg = [
  'https://http2.mlstatic.com/D_NQ_NP_751325-MLM42178908998_062020-O.jpg',
  'https://m.media-amazon.com/images/I/71x80GyxLaL._AC_SL1000_.jpg',
  'https://img.mx.class.posot.com/es_mx/2019/10/12/Coronas-y-guirnaldas-Navideas-Decoradas-Navidad-y-Servicio-20191012045233.jpg',
  'https://images.unsplash.com/photo-1644297794109-f72951477f40?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGFycmVnbG9zJTIwZmxvcmFsZXMlMjBhcnRpZmljaWFsZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500'
];

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var colorNaranja = const Color(0xFFFF9200);
    var colorFondoServicios = const Color.fromRGBO(255, 146, 0, 0.8);
    var colorFondoServiciosSombra = const Color.fromRGBO(255, 146, 0, 0.3);
    var redondeoServicios = const Radius.circular(15.0);
    var colorTitulosServicios = Colors.white;
    var titulosServicios = [
      'Arreglos florales artificiales',
      'Guias navideñas',
      'Coronas florales artificiales',
      'Ramos'
    ];

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
          child: SizedBox(
            width: screenSize.width,
            height: screenSize.height,
            child: ListView(children: <Widget>[
              Column(children: [
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  width: screenSize.width,
                  color: const Color.fromRGBO(255, 146, 0, 0.7),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(padding: EdgeInsets.only(top: 30)),
                      const Text(
                        'FLORISTERÍA "LUGANDY"',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 4,
                            color: Colors.white),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 30)),
                      Stack(
                        children: [
                          Positioned(
                            top: (screenSize.height * 20) / 100,
                            child: Transform(
                              // origin:
                              //     Offset(-(screenSize.height * 20) / 100, 80),
                              transform: Matrix4.identity()
                                ..scale(1.9)
                                ..rotateZ(-0.07)
                                ..rotateZ(0.2),
                              child: Container(
                                width: screenSize.width,
                                height: (screenSize.height * 20) / 100,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Carrusel(),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                    width: screenSize.width,
                    // height: 500,
                    // height: (screenSize.height * 90) / 100,
                    transform: Matrix4.translationValues(0.0, -1.0, 0.0),
                    color: Colors.white,
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: (screenSize.width * 100) / 100,
                            height: 50,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(130, 161, 177, 0.8),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(130, 161, 177, 0.3),
                                  // spreadRadius: 5,
                                  blurRadius: 2,
                                  offset: Offset(0, 4),
                                )
                              ],
                            ),
                            child: const Text(
                              'NUESTROS PRODUCTOS',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 3,
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: ((screenSize.width * 5) / 100)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Padding(
                                    padding: EdgeInsets.only(bottom: 40)),
                                nuestrosServicios(
                                    screenSize,
                                    colorNaranja,
                                    redondeoServicios,
                                    titulosServicios[0],
                                    colorTitulosServicios,
                                    serviciosImg[0],
                                    colorFondoServicios,
                                    colorFondoServiciosSombra),
                                Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical:
                                            ((screenSize.width * 8) / 100))),
                                nuestrosServicios(
                                    screenSize,
                                    colorNaranja,
                                    redondeoServicios,
                                    titulosServicios[1],
                                    colorTitulosServicios,
                                    serviciosImg[1],
                                    colorFondoServicios,
                                    colorFondoServiciosSombra),
                                Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical:
                                            ((screenSize.width * 8) / 100))),
                                nuestrosServicios(
                                    screenSize,
                                    colorNaranja,
                                    redondeoServicios,
                                    titulosServicios[2],
                                    colorTitulosServicios,
                                    serviciosImg[2],
                                    colorFondoServicios,
                                    colorFondoServiciosSombra),
                                Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical:
                                            ((screenSize.width * 8) / 100))),
                                nuestrosServicios(
                                    screenSize,
                                    colorNaranja,
                                    redondeoServicios,
                                    titulosServicios[3],
                                    colorTitulosServicios,
                                    serviciosImg[3],
                                    colorFondoServicios,
                                    colorFondoServiciosSombra),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
              ]),
            ]),
          ),
        ));
  }
}

Widget nuestrosServicios(screenSize, color, redondeo, titulo, colorTitulo, img,
    colorNaranja, sombraNaranja) {
  var alto = 360.0;
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        alignment: Alignment.center,
        width: (screenSize.width * 65) / 100,
        height: alto,
        padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: sombraNaranja,
                // spreadRadius: 5,
                blurRadius: 3,
                offset: Offset(4, 4),
              )
            ],
            shape: BoxShape.rectangle,
            color: colorNaranja,
            borderRadius: BorderRadius.all(redondeo)),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: (screenSize.width * 65) / 100,
              // height: alto,
              child: Text(titulo,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: colorTitulo,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  )),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            Container(
              alignment: Alignment.center,
              // height: alto,
              width: (screenSize.width * 45) / 100,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: Image.network(
                img,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, progress) {
                  return progress == null
                      ? child
                      : CircularProgressIndicator(color: colorNaranja);
                },
                height: 200,
                width: (screenSize.width * 60) / 100,
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 15)),
            Container(
              // color: Colors.red,
              alignment: Alignment.center,
              child: TextButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(horizontal: 30)),
                    elevation: MaterialStateProperty.all(4),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xFF96AC60)),
                    shadowColor:
                        MaterialStateProperty.all(const Color(0xFF96AC60))),
                child: const Text(
                  'Ver más',
                  style: TextStyle(
                      color: Colors.white, letterSpacing: 2, fontSize: 15),
                ),
                onPressed: () => {},
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

// class CustomClipPath extends CustomClipper<Path> {
//   var radius = 10.0;
//   @override
//   Path getClip(Size size) {
//     Path path = Path()
//       ..lineTo(0, 0)
//       ..lineTo(0, size.height)
//       ..lineTo((size.width / 1.3), size.height)
//       ..lineTo(size.width, 0);
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => true;
// }