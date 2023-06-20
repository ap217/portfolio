import 'package:url_launcher/url_launcher.dart';

class Method {
  launchURL(Uri link) async {
    // String url = link;
    if (await canLaunchUrl(link)) {
      await launchUrl(link);
    } else {
      throw 'Could not launch $link';
    }
  }
// UrlLauncher.launch('tel: xxxxxxxx');
  // launchCaller() async {
  //   Uri url = "tel:8103191280";
  //   if (await canLaunchUrl(url)) {
  //     await launchUrl("tel:8103191280");
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  // launchEmail() async {
  //   if (await canLaunchUrl("mailto:jadhavakshay0701@gmail.com")) {
  //     await launchUrl("mailto:jadhavakshay0701@gmail.com");
  //   } else {
  //     throw 'Could not launch';
  //   }
  // }
}
