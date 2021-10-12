import 'package:flutter/material.dart';

class PhotoboothBackground extends StatelessWidget {
  const PhotoboothBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      fit: StackFit.expand,
      children: [
         Container(
          width: double.infinity,
          height: double.infinity,
          decoration:  const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xff3487F1),
                Color(0xff4D95F8),
                Color(0xff4F96F9),
                Color(0xff0658BE),
              ],
            ),
          ),
        ),
        Positioned(
          left: 40,
          top: size.height * 0.2,
          child: Image.asset(
            'assets/backgrounds/block-1.png',
            height: 150,
          ),
        ),
        Positioned(
          left: 10,
          bottom: size.height * 0.1,
          child: Image.asset(
            'assets/backgrounds/block-3.png',
            height: 150,
          ),
        ),
        Positioned(
          right: 40,
          bottom: 80,
          child: Image.asset(
            'assets/backgrounds/block-2.png',
            height: 300,
          ),
        ),
        Positioned(
          right: 40,
          top: size.height * 0.1,
          child: Image.asset(
            'assets/backgrounds/block-5.png',
            height: 300,
          ),
        ),
        Positioned(
          left: 40,
          top: size.height * 0.45,
          child: Image.asset(
            'assets/backgrounds/block-4.png',
            height: 300,
          ),
        ),
        /*Positioned(
          left: 50,
          bottom: size.height * 0.2,
          child: Image.asset(
            'assets/backgrounds/red_box.png',
            height: 150,
          ),
        ),
        Positioned(
          right: -50,
          top: size.height * 0.1,
          child: Image.asset(
            'assets/backgrounds/blue_circle.png',
            height: 150,
          ),
        ),
        Positioned(
          right: 50,
          bottom: size.height * 0.1,
          child: Image.asset(
            'assets/backgrounds/yellow_plus.png',
            height: 150,
          ),
        ),*/
      ],
    );
  }
}
