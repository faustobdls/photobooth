import 'package:flutter/material.dart';
import 'package:photobooth_ui/photobooth_ui.dart';

class AnimatedIWD extends AnimatedSprite {
  const AnimatedIWD({Key? key})
      : super(
          key: key,
          loadingIndicatorColor: PhotoboothColors.red,
          sprites: const Sprites(
            asset: 'iwd.png',
            size: Size(992, 992),
            frames: 1,
            stepTime: 2 / 25,
          ),
        );
}
