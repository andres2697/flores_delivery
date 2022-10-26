import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    return Scaffold(
      body: Row(
        children: [
          Center(
              child: Container(
            width: media.size.width,
            decoration: const BoxDecoration(color: Color(0xAF2166E5)),
            child: const SpinKitFadingFour(
              // color: Colors.red,
              shape: BoxShape.circle,
              color: Colors.white,
              size: 40.0,
              duration: Duration(milliseconds: 1000),
              // controller: controlador,
            ),
          ))
        ],
      ),
    );
  }
}
