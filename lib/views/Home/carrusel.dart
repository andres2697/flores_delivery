import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1610841803453-1b30e19d2354?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=812&q=80',
  'https://images.unsplash.com/photo-1496932388010-82366a36677e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
  'https://images.unsplash.com/photo-1564070815164-7ae2f49e5307?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
  'https://images.unsplash.com/photo-1476614249759-1b4d2c8e2a1a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80'
];

class Carrusel extends StatefulWidget {
  Carrusel({Key? key}) : super(key: key);

  @override
  State<Carrusel> createState() => _CarruselState();
}

class _CarruselState extends State<Carrusel> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
        width: screenSize.width,
        height: (screenSize.height * 30) / 100,
        // margin: EdgeInsets.only(bottom: -10),
        // padding: EdgeInsets.symmetric(horizontal: 10),
        child: CarouselSlider(
          options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 8),
              autoPlayAnimationDuration: const Duration(milliseconds: 900),
              initialPage: 0,
              pauseAutoPlayOnTouch: true,
              height: (screenSize.height * 30) / 100,
              enlargeCenterPage: true
              // height: screenSize.height - 20),
              ),
          items: imgList
              .map((item) => Container(
                    child: Center(
                        child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        item,
                        fit: BoxFit.fill,
                        loadingBuilder: (context, child, progress) {
                          return progress == null
                              ? child
                              : const CircularProgressIndicator(
                                  color: Colors.grey);
                        },
                        height: (screenSize.height * 60) / 100,
                        width: (screenSize.width * 100) / 100,
                      ),
                    )),
                  ))
              .toList(),
        ));
  }
}
