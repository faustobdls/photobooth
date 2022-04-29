import 'package:flutter/material.dart';
import 'package:photobooth_ui/photobooth_ui.dart';

class AnimatedWTMLogo extends AnimatedSprite {
  const AnimatedWTMLogo({Key? key})
      : super(
          key: key,
          loadingIndicatorColor: PhotoboothColors.red,
          sprites: const Sprites(
            asset: 'wtm.png',
            size: Size(720, 720),
            frames: 1,
            stepTime: 2 / 25,
          ),
        );
}
