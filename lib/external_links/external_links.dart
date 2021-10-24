import 'package:photobooth_ui/photobooth_ui.dart';

const googleIOExternalLink = 'https://events.google.com/io/';
const flutterDevExternalLink = 'https://flutter.dev';
const firebaseExternalLink = 'https://firebase.google.com';
const photoboothEmail = 'mailto:flutter-photo-booth@google.com';
const openSourceLink = 'https://github.com/flutter/photobooth';
const googleIOExtendLink = 'http://devfest.com.br/';

Future<void> launchGoogleIOExtendedLink() => openLink(googleIOExtendLink);
Future<void> launchGoogleIOLink() => openLink(googleIOExternalLink);
Future<void> launchFlutterDevLink() => openLink(flutterDevExternalLink);
Future<void> launchFirebaseLink() => openLink(firebaseExternalLink);
Future<void> launchPhotoboothEmail() => openLink(photoboothEmail);
Future<void> launchOpenSourceLink() => openLink(openSourceLink);
