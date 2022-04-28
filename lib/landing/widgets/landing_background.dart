import 'package:flutter/material.dart';
import 'package:photobooth_ui/photobooth_ui.dart';

class LandingBackground extends StatelessWidget {
  const LandingBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [Container(
        width: double.infinity,
          height: double.infinity,
        key: const Key('landingPage_background'),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [
              PhotoboothColors.tuftsBlue,
              PhotoboothColors.pictonBlue,
              PhotoboothColors.turquoise,
            ],
          ),
        ),
      ),
      Positioned(
          left: 0,
          top: size.height * 0.2,
          child: Image.asset(
            'assets/backgrounds/block-1.png',
            height: 350,
          ),
        ),
         Positioned(
          left: 40,
          bottom: size.height * 0.15,
          child: Image.asset(
            'assets/backgrounds/block-2.png',
            height: 300,
          ),
        ),
        Positioned(
          left:300,
          bottom: -100,
          child: Image.asset(
            'assets/backgrounds/block-3.png',
            height: 300,
          ),
        ),
        Positioned(
          right:200,
          top: size.height * 0.15,
          child: Image.asset(
            'assets/backgrounds/block-4.png',
            height: 300,
          ),
        ),
        Positioned(
          right:-240,
          top: size.height * 0.45,
          child: Image.asset(
            'assets/backgrounds/block-5.png',
            height: 250,
          ),
        ),
        Positioned(
          right:400,
          bottom: size.height * 0.15,
          child: Image.asset(
            'assets/backgrounds/block-6.png',
            height: 200,
          ),
        ),
      ]
    );
  }
}
