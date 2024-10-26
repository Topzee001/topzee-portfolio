// URL Launcher
import 'package:url_launcher/url_launcher.dart';

// void launchUrl(String url) async =>
//     await canLaunchUrl(url) ? await launchUrl(url) : throw 'Could not launch $url';

Future<void> launchUrlString(String url) async {
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw Exception('Could not launch $url');
  }
}

// Social Media
const kSocialIcons = [
  "https://img.icons8.com/android/480/ffffff/twitter.png",
  "https://img.icons8.com/metro/308/ffffff/linkedin.png",
  "https://img.icons8.com/material-rounded/384/ffffff/github.png",
  "https://img.icons8.com/ios-filled/500/ffffff/medium-monogram--v1.png"
];

const kSocialLinks = [
  "https://x.com/Topzee0o1",
  "https://linkedin.com/in/ibrahim-sakariyah-071380183",
  "https://github.com/Topzee001",
  "https://medium.com/@ibrahimtemitope"
];
