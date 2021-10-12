import 'package:flutter/material.dart';
import 'package:photobooth_ui/photobooth_ui.dart';

class AnimatedDevfest extends AnimatedSprite {
  const AnimatedDevfest({Key? key})
      : super(
          key: key,
          loadingIndicatorColor: PhotoboothColors.red,
          sprites: const Sprites(
            asset: 'devfest_spritesheet.png',
            size: Size(385, 187),
            frames: 1,
            stepTime: 2 / 25,
          ),
        );
}
