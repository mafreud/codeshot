import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherService {
  Future<void> launchUrlFromUrl(String targetUrl) async {
    final Uri url = Uri.parse(targetUrl);
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }
}

final urlLauncherServiceProvider = Provider<UrlLauncherService>((ref) {
  return UrlLauncherService();
});
