import 'package:flutter/material.dart';
import 'package:photobooth_ui/photobooth_ui.dart';

class AnimatedGDG extends AnimatedSprite {
  const AnimatedGDG({Key? key})
      : super(
          key: key,
          loadingIndicatorColor: PhotoboothColors.red,
          sprites: const Sprites(
            asset: 'gdg_spritesheet.png',
            size: Size(336, 156),
            frames: 1,
            stepTime: 2 / 25,
          ),
        );
}
