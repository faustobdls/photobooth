import 'package:flutter/material.dart';
import 'package:photobooth_ui/photobooth_ui.dart';

class ShareBackground extends StatelessWidget {
  const ShareBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                PhotoboothColors.transparent,
                PhotoboothColors.black54,
              ],
            ),
          ),
        ),
        /*ResponsiveLayoutBuilder(
          large: (_, __) => Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              'assets/backgrounds/yellow_bar.png',
              filterQuality: FilterQuality.high,
            ),
          ),
          small: (_, __) => const SizedBox(),
        ),
        ResponsiveLayoutBuilder(
          large: (_, __) => Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              'assets/backgrounds/circle_object.png',
              filterQuality: FilterQuality.high,
            ),
          ),
          small: (_, __) => const SizedBox(),
        ),*/

        ResponsiveLayoutBuilder(
          large: (_, __) => Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'assets/backgrounds/block-4.png',
              filterQuality: FilterQuality.high,
            ),
          ),
          small: (_, __) => const SizedBox(),
        ),
        ResponsiveLayoutBuilder(
          large: (_, __) => Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 50),
              child: Image.asset(
                'assets/backgrounds/block-1.png',
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
          small: (_, __) => const SizedBox(),
        ),
        ResponsiveLayoutBuilder(
          large: (_, __) => Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 60, left: 10),
              child: Image.asset(
                'assets/backgrounds/block-3.png',
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
          small: (_, __) => const SizedBox(),
        ),
        ResponsiveLayoutBuilder(
          large: (_, __) => Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 60, right: 60),
              child: Image.asset(
                'assets/backgrounds/block-2.png',
                filterQuality: FilterQuality.high,
                 height: 300,
              ),
            ),
          ),
          small: (_, __) => const SizedBox(),
        ),
        ResponsiveLayoutBuilder(
          large: (_, __) => Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 60, right: 80),
              child: Image.asset(
                'assets/backgrounds/block-5.png',
                filterQuality: FilterQuality.high,
                height: 300,
              ),
            ),
          ),
          small: (_, __) => const SizedBox(),
        ),
      ],
    );
  }
}
