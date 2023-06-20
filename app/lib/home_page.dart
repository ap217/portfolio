import 'package:app/project_page.dart';
import 'package:app/scroll_to_top.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:flutter_web_scrollbar/flutter_web_scrollbar.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'about_page.dart';
// import 'animated_graphic.dart';
import 'app_bar_title.dart';
import 'appbar_button.dart';
import 'footer_page.dart';
import 'intro_page.dart';
// import 'main.dart';
import 'model/Method.dart';
// import 'project_page.dart';
import 'project_widget.dart';

// ignore: avoid_web_libraries_in_flutter
// import 'dart:html' as html;
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
// import 'package:flutter_web_plugins/flutter_web_plugins.dart';

class HomePage extends StatefulWidget {
  final AutoScrollController _scrollController = AutoScrollController();

  Future<void> _scrollToTop() async {
    await _scrollController.scrollToIndex(0,
        preferPosition: AutoScrollPosition.begin);
  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Method method = new Method();

  // ScrollController _scrollController = ScrollController();
  // final scrollDirection = Axis.vertical;
  // late AutoScrollController controller;

  List<String> sectionTitles = ['Home', 'About', 'Experience', 'Contact'];
  final itemKeyHome = GlobalKey();
  final itemKeyAbout = GlobalKey();
  final itemKeyPro = GlobalKey();
  final itemKeyContact = GlobalKey();
  final ScrollController _scrollController = ScrollController();
  bool _isHovered = false;

  @override
  Future scrollToHome() async {
    final context = itemKeyHome.currentContext!;
    await Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 700),
    );
  }

  Future scrollToAbout() async {
    final context = itemKeyAbout.currentContext!;
    await Scrollable.ensureVisible(
      context,
      duration: const Duration(seconds: 1),
    );
  }

  Future scrollToPro() async {
    final context = itemKeyPro.currentContext!;
    await Scrollable.ensureVisible(
      context,
      duration: const Duration(seconds: 1),
    );
  }

  Future scrollToContact() async {
    final context = itemKeyContact.currentContext!;
    await Scrollable.ensureVisible(
      context,
      duration: const Duration(seconds: 1),
    );
  }

  Future scrollToTop() async {
    final context = itemKeyHome.currentContext!;
    await Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff0A192F),
      body: Scrollbar(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              Container(
                // padding left right, 10 10
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                // padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                child: Column(
                  children: [
                    Container(
                      height: screenWidth >= 1100
                          ? MediaQuery.of(context).size.height * 0.13
                          : screenWidth > 850
                              ? MediaQuery.of(context).size.height * 0.12
                              : screenWidth > 600
                                  ? MediaQuery.of(context).size.height * 0.11
                                  : MediaQuery.of(context).size.height * 0.10,
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          if (constraints.maxWidth < 750) {
                            // Display buttons in a PopupMenuButton
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 16.0),
                                  child: Image(
                                    width: 50,
                                    height: 50,
                                    image:
                                        AssetImage("assests/dpiconround.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Spacer(),
                                PopupMenuButton<String>(
                                  color: const Color.fromARGB(255, 19, 38, 67),
                                  icon: const Icon(
                                    Icons.more_vert,
                                    color: Color(0xff48E1EC),
                                  ),
                                  itemBuilder: (context) => [
                                    const PopupMenuItem(
                                      value: 'home',
                                      child: Text('Home',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          )),
                                    ),
                                    const PopupMenuItem(
                                      value: 'about',
                                      child: Text('About',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          )),
                                    ),
                                    const PopupMenuItem(
                                      value: 'projects',
                                      child: Text('Projects',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          )),
                                    ),
                                    const PopupMenuItem(
                                      value: 'contact',
                                      child: Text('Contact',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          )),
                                    ),
                                    PopupMenuItem(
                                      value: 'Resume',
                                      child: SizedBox(
                                        height: 35,
                                        width: 100,
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                            // primary: Colors.white,
                                            backgroundColor: Color(0xff48E1EC),
                                            // onSurface: Colors.grey,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(6.0),
                                              side: BorderSide(
                                                  color: Color(0xff48E1EC)),
                                            ),
                                          ),
                                          onPressed: () async {
                                            await goToWebPage(
                                                "https://drive.google.com/file/d/1w368A72oT7nIKB9ZGsE1lsiDEKNwPYtT/view?usp=drive_link.pdf");
                                          },
                                          child: const Text(
                                            "Resume",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                  onSelected: (value) {
                                    switch (value) {
                                      case 'home':
                                        scrollToHome();
                                        break;
                                      case 'about':
                                        scrollToAbout();
                                        break;
                                      case 'projects':
                                        scrollToPro();
                                        break;
                                      case 'contact':
                                        scrollToContact();
                                        break;
                                    }
                                  },
                                ),
                                const SizedBox(width: 20),
                              ],
                            );
                          } else {
                            // Display buttons in the row
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40.0),
                                  child: Image(
                                    width: 50,
                                    height: 50,
                                    image:
                                        AssetImage("assests/dpiconround.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Spacer(),
                                HoverTextButton(
                                  onPressed: () => scrollToHome(),
                                  text: 'Home',
                                ),
                                HoverTextButton(
                                  onPressed: () => scrollToAbout(),
                                  text: 'About',
                                ),
                                HoverTextButton(
                                  onPressed: () => scrollToPro(),
                                  text: 'Projects',
                                ),
                                HoverTextButton(
                                  onPressed: () => scrollToContact(),
                                  text: 'Contact',
                                ),
                                const SizedBox(width: 40.0),
                                SizedBox(
                                  height: 45,
                                  width: 120,
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                      // primary: Colors.white,
                                      backgroundColor: Color(0xff48E1EC),
                                      // onSurface: Colors.grey,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                        side: BorderSide(
                                            color: Color(0xff48E1EC)),
                                      ),
                                    ),
                                    onPressed: () async {
                                      await goToWebPage(
                                          "https://drive.google.com/file/d/1w368A72oT7nIKB9ZGsE1lsiDEKNwPYtT/view?usp=drive_link.pdf");
                                    },
                                    child: const Text(
                                      "Resume",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 20),
                              ],
                            );
                          }
                        },
                      ),
                    ),

                    // Container(
                    //   height: MediaQuery.of(context).size.height * 0.15,
                    //   width: MediaQuery.of(context).size.width * 1,
                    //   child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //       children: [
                    //         Padding(
                    //           padding: const EdgeInsets.only(left: 40.0),
                    //           child: Image(
                    //             width: MediaQuery.of(context).size.width * 0.04,
                    //             height:
                    //                 MediaQuery.of(context).size.width * 0.04,
                    //             image: AssetImage("assests/dpiconround.png"),
                    //             fit: BoxFit.cover,
                    //           ),
                    //         ),
                    //         const Spacer(),
                    //         HoverTextButton(
                    //           onPressed: () => scrollToHome(),
                    //           text: 'Home',
                    //         ),
                    //         HoverTextButton(
                    //           onPressed: () => scrollToAbout(),
                    //           text: 'About',
                    //         ),
                    //         HoverTextButton(
                    //           onPressed: () => scrollToPro(),
                    //           text: 'Projects',
                    //         ),
                    //         HoverTextButton(
                    //           onPressed: () => scrollToContact(),
                    //           text: 'Contact',
                    //         ),
                    //         const SizedBox(width: 40.0),
                    //         SizedBox(
                    //           height: 45,
                    //           width: 120,
                    //           child: TextButton(
                    //             style: TextButton.styleFrom(
                    //               // primary: Colors.white,
                    //               backgroundColor: Color(0xff48E1EC),
                    //               // onSurface: Colors.grey,
                    //               shape: RoundedRectangleBorder(
                    //                   borderRadius: BorderRadius.circular(6.0),
                    //                   side:
                    //                       BorderSide(color: Color(0xff48E1EC))),
                    //             ),
                    //             onPressed: () async {
                    //               await goToWebPage(
                    //                   "https://drive.google.com/file/d/1w368A72oT7nIKB9ZGsE1lsiDEKNwPYtT/view?usp=drive_link.pdf");
                    //             },
                    //             child: const Text(
                    //               "Resume",
                    //               style: TextStyle(
                    //                   color: Colors.white,
                    //                   fontWeight: FontWeight.bold,
                    //                   fontSize: 20.0),
                    //             ),
                    //           ),
                    //         ),
                    //         const SizedBox(width: 20),
                    //       ]),
                    // ),
                    Container(
                      height: MediaQuery.of(context).size.height * 1 -
                          MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width * 1,
                      child: Row(
                        children: [
                          // Container(
                          //   width: MediaQuery.of(context).size.width * 0.08,
                          //   child: Expanded(
                          //     child: Padding(
                          //       padding: const EdgeInsets.only(left: 0, right: 0),
                          //       child: Column(
                          //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          //         children: [
                          //           Spacer(),
                          //           GestureDetector(
                          //             onTap: () {
                          //               method.launchURL(
                          //                   "https://www.facebook.com/profile.php?id=100013215377464"
                          //                       as Uri);
                          //             },
                          //             child: Image(
                          //               width: MediaQuery.of(context).size.width * 0.03,
                          //               height:
                          //                   MediaQuery.of(context).size.width * 0.03,
                          //               image: AssetImage("assests/facebook.png"),
                          //               fit: BoxFit.cover,
                          //             ),
                          //           ),
                          //           SizedBox(height: 20.0),
                          //           GestureDetector(
                          //             onTap: () {
                          //               // method
                          //               //     .launchURL("https://github.com/Akshay0701");
                          //             },
                          //             child: Image(
                          //               width: MediaQuery.of(context).size.width * 0.03,
                          //               height:
                          //                   MediaQuery.of(context).size.width * 0.03,
                          //               image: AssetImage("assests/github.png"),
                          //               fit: BoxFit.cover,
                          //             ),
                          //           ),
                          //           SizedBox(height: 20.0),
                          //           GestureDetector(
                          //             onTap: () {
                          //               // method.launchURL(
                          //               //     "https://www.hackerrank.com/jadhavakshay0701");
                          //             },
                          //             child: Image(
                          //               width: MediaQuery.of(context).size.width * 0.03,
                          //               height:
                          //                   MediaQuery.of(context).size.width * 0.03,
                          //               image: AssetImage("assests/hackerrank.png"),
                          //               fit: BoxFit.cover,
                          //             ),
                          //           ),
                          //           SizedBox(height: 20.0),
                          //           GestureDetector(
                          //             onTap: () {
                          //               // method.launchURL(
                          //               //     "https://www.linkedin.com/in/akshay-jadhav-90ba81134/");
                          //             },
                          //             child: Image(
                          //               width: MediaQuery.of(context).size.width * 0.03,
                          //               height:
                          //                   MediaQuery.of(context).size.width * 0.03,
                          //               image: AssetImage("assests/linkedin.png"),
                          //               fit: BoxFit.cover,
                          //             ),
                          //           ),
                          //           SizedBox(height: 30.0),
                          //         ],
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          Expanded(
                              child: SingleChildScrollView(
                            child: Container(
                                child: Column(
                              children: [
                                Container(
                                  key: itemKeyHome,
                                  child: IntroPage(),
                                ),
                                Container(
                                  key: itemKeyAbout,
                                  child: AboutPage(),
                                ),
                                Container(
                                  key: itemKeyPro,
                                  child: ProjectPage(),
                                ),
                                // Container(
                                //   padding: EdgeInsets.fromLTRB(
                                //       50.0, 100.0, 50.0, 0.0),
                                //   child: const Text(
                                //     'Other Projects',
                                //     style: TextStyle(
                                //         color: Color(0xff48E1EC),
                                //         fontWeight: FontWeight.bold,
                                //         fontSize: 45.0),
                                //   ),
                                // ),
                                // Container(
                                //   padding: EdgeInsets.fromLTRB(
                                //       50.0, 100.0, 50.0, 0.0),
                                //   child: Image(
                                //     width:
                                //         MediaQuery.of(context).size.width * 0.8,
                                //     image: AssetImage("assests/banner.png"),
                                //     fit: BoxFit.cover,
                                //   ),
                                // ),
                                Container(
                                  key: itemKeyContact,
                                  child: FooterPage(),
                                ),
                              ],
                            )),
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 30.0, bottom: 40.0),
        child: SizedBox(
          width: screenWidth >= 1200
              ? 70
              : screenWidth >= 850
                  ? 60
                  : 50,
          // : screenWidth >= 600
          // ? 50
          // : 40, // Set the desired width
          height: screenWidth >= 1200
              ? 70
              : screenWidth >= 850
                  ? 60
                  : 50,
          // screenWidth >= 600
          // ? 50
          // : 40, // Set the desired height

          child: FloatingActionButton(
            onPressed: () => scrollToTop(),
            hoverColor: Color.fromARGB(255, 31, 54, 87),
            backgroundColor: Color(0xff172943),
            child: Icon(Icons.arrow_upward),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }

  Future<void> goToWebPage(String urlString) async {
    final Uri _url = Uri.parse(urlString);
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  // Future _scrollToIndex() async {
  //   await controller.scrollToIndex(6, preferPosition: AutoScrollPosition.begin);
  // }
}

////////////////////////////////////////////////////////////////////////////////

// import 'package:flutter/material.dart';

// import 'about_page.dart';
// import 'app_bar_title.dart';
// import 'footer_page.dart';
// import 'intro_page.dart';
// import 'project_page.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xff0A192F),
//       body: Container(
//         child: Column(
//           children: [
//             AppBarSection(),
//             Expanded(
//               child: Column(
//                 children: [
//                   IntroPage(),
//                   AboutPage(),
//                   ProjectPage(),
//                   OtherProjectsSection(),
//                   BannerSection(),
//                   FooterPage(),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class AppBarSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height * 0.15,
//       width: MediaQuery.of(context).size.width,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 40.0),
//             child: Image(
//               width: MediaQuery.of(context).size.width * 0.04,
//               height: MediaQuery.of(context).size.width * 0.04,
//               image: AssetImage("assests/dpiconround.png"),
//               fit: BoxFit.cover,
//             ),
//           ),
//           Spacer(),
//           AppBarTitle(text: "Home"),
//           AppBarTitle(text: 'About'),
//           AppBarTitle(text: 'Experience'),
//           AppBarTitle(text: 'Contact'),
//           const SizedBox(width: 40.0),
//           SizedBox(
//             height: 45,
//             width: 120,
//             child: TextButton(
//               style: TextButton.styleFrom(
//                 backgroundColor: Color(0xff48E1EC),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(6.0),
//                   side: BorderSide(color: Color(0xff48E1EC)),
//                 ),
//               ),
//               onPressed: () {},
//               child: const Text(
//                 "Resume",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20.0,
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(width: 20),
//         ],
//       ),
//     );
//   }
// }

// class OtherProjectsSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.fromLTRB(50.0, 100.0, 50.0, 0.0),
//       child: const Text(
//         'Other Projects',
//         style: TextStyle(
//           color: Color(0xff48E1EC),
//           fontWeight: FontWeight.bold,
//           fontSize: 30.0,
//         ),
//       ),
//     );
//   }
// }

// class BannerSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.fromLTRB(50.0, 100.0, 50.0, 0.0),
//       child: Image(
//         width: MediaQuery.of(context).size.width * 0.8,
//         image: AssetImage("assests/banner.png"),
//         fit: BoxFit.cover,
//       ),
//     );
//   }
// }
