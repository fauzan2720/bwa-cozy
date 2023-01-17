import 'package:cozy/core.dart';
import 'package:url_launcher/url_launcher.dart';

class GoToUrl {
  Future<void> toUrl(
    String url,
  ) async {
    if (!await launchUrl(Uri.parse(url))) {
      Get.to(const PageNotFoundView());
    }
  }
}
