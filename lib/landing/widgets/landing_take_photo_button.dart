import 'package:analytics/analytics.dart';
import 'package:flutter/material.dart';
import 'package:io_photobooth/l10n/l10n.dart';
import 'package:io_photobooth/photobooth/photobooth.dart';
import 'package:photobooth_ui/photobooth_ui.dart';

class LandingTakePhotoButton extends StatelessWidget {
  const LandingTakePhotoButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ElevatedButton(
      onPressed: () {
        trackEvent(
          category: 'button',
          action: 'click-start-photobooth',
          label: 'start-photobooth',
        );
        Navigator.of(context).push(PhotoboothPage.route());
      },
     style:ButtonStyle(
        backgroundColor: MaterialStateProperty.all(PhotoboothColors.white),
      ),
      child: Text(
        l10n.landingPageTakePhotoButtonText,
        style: const TextStyle(color: PhotoboothColors.tuftsBlue,
        ),
      ),
    );
  }
}
