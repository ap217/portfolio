import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'model/Method.dart';
import 'my_colors.dart';

class FooterPage extends StatefulWidget {
  @override
  _FooterPageState createState() => _FooterPageState();
}

class _FooterPageState extends State<FooterPage> {
  void _launchURL(String url) async {
    if (await canLaunchUrl(url as Uri)) {
      await launchUrl(url as Uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget build(BuildContext context) {
    Method method = new Method();
    String str =
        "Get in touch with me today to discuss your next project or collaboration. Whether you have an exciting idea you'd like to bring to life or need assistance with your existing software, I'm here to help. Feel free to reach out via the contact details below, and let's turn your vision into reality together.";
    return Container(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            // height: MediaQuery.of(context).size.height * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50.0,
                ),
                Text(
                  'Whats Next ?',
                  style: TextStyle(
                    color: MyColors.clr2,
                    fontSize: MediaQuery.of(context).size.width < 480 ? 25 : 35,
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Center(
                  child: Text(
                    'Get In Touch',
                    style: TextStyle(
                      color: MyColors.clrwhite,
                      fontWeight: FontWeight.bold,
                      fontSize:
                          MediaQuery.of(context).size.width < 480 ? 40 : 65,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                SizedBox(
                    width: 600,
                    child: Text(
                      str,
                      style:
                          TextStyle(color: MyColors.clrwhite54, fontSize: 20.0),
                      textAlign: TextAlign.center,
                    )),
                const SizedBox(
                  height: 60.0,
                ),
                SizedBox(
                  height: 65,
                  width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: MyColors.clr3,
                      // primary: MyColors.clr1,
                      // onPrimary: MyColors.clr2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                    // color: MyColors.clr1,
                    onPressed: () async {
                      await goToWebPage(
                          "https://www.linkedin.com/in/adityapatel217/");
                    },
                    child: const Text(
                      "Get In Touch",
                      style: TextStyle(
                          color: MyColors.clr2,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SocialMediaIconButton(
                        icon: FontAwesomeIcons.github,
                        url: 'https://github.com/ap217',
                        tip: 'github',
                      ),
                      SocialMediaIconButton(
                        icon: FontAwesomeIcons.twitter,
                        url: 'https://twitter.com/Adi2171',
                        tip: 'twitter',
                      ),
                      SocialMediaIconButton(
                        icon: FontAwesomeIcons.envelope,
                        url: 'mailto:adityapatelda@gmail.com',
                        tip: 'adityapatelda@gmail.com',
                        // scheme: 'mailto',
                        // path: 'recipient@example.com',
                        // query: 'subject=Hello&body=Hello%20there!',
                      ),
                      // SocialMediaIconButton(
                      //   icon: FontAwesomeIcons.pinterest,
                      //   url: 'https://www.facebook.com/akshay.jadhav.217',
                      //   tip: 'fb',
                      // ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const SizedBox(
                  height: 20,
                  child: Text("© 2023 Aditya Patel. All rights reserved.",
                      style: TextStyle(
                          color: MyColors.clrwhite54, fontSize: 15.0)),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  // goToWebPage(String s) {
  Future<void> goToWebPage(String urlString) async {
    final Uri _url = Uri.parse(urlString);
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
  // }
}

class SocialMediaIconButton extends StatefulWidget {
  final IconData icon;
  final String url;

  const SocialMediaIconButton(
      {Key? key, required this.icon, required this.url, required String tip})
      : super(key: key);

  @override
  _SocialMediaIconButtonState createState() => _SocialMediaIconButtonState();
}

class _SocialMediaIconButtonState extends State<SocialMediaIconButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    String url = widget.url;
    return InkWell(
      onHover: (value) {
        setState(() {
          _isHovered = value;
        });
      },
      onTap: () async {
        await goToWebPage(url);
      },
      child: IconButton(
        icon: Icon(
          widget.icon,
          size: 25.0,
          color: _isHovered
              ? const Color.fromARGB(255, 255, 255, 255)
              : MyColors.clr2,
        ),
        onPressed: () async {
          await goToWebPage(url);
        },
      ),
    );
  }

  Future<void> goToWebPage(String urlString) async {
    final Uri _url = Uri.parse(urlString);
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
}
