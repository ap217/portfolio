import 'package:flutter/material.dart';

import 'image_hover_effect.dart';
import 'my_colors.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    String str = "I Am Aditya Patel, Student Developer.";
    String str2 =
        "I have developed Apps and Websites using Flutter; some project demos are shown below; I'm a student at Dhirubhai Ambani Institute of Communication and Technology (DAIICT), Gandhinagar. I'm pursuing ICT. Currently, I'm in 3rd year(2022-2023). I am focused on Development and DSA.";
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // Determine the screen width to define responsive behavior
        double screenWidth = constraints.maxWidth;

        if (screenWidth >= 1200) {
          // Desktop layout
          return _buildDesktopLayout(str, str2);
        } else if (screenWidth >= 768) {
          // Tablet layout
          return _buildTabletLayout(str, str2);
        } else {
          // Mobile layout
          return _buildMobileLayout(str, str2);
        }
      },
    );
  }

  Widget _buildDesktopLayout(String str, String str2) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'About Me',
                  style: TextStyle(
                    color: MyColors.clr2,
                    fontWeight: FontWeight.bold,
                    fontSize: 45.0,
                  ),
                ),
                const SizedBox(height: 20.0),
                Text(
                  str,
                  style: TextStyle(
                      fontSize: 23.0,
                      color: Colors.white70,
                      letterSpacing: .4,
                      height: 1.5),
                ),
                const SizedBox(height: 25.0),
                Text(
                  str2,
                  style: TextStyle(
                      fontSize: 23.0,
                      color: Colors.white70,
                      letterSpacing: 0.4),
                ),
                const SizedBox(height: 40.0),
                const Text(
                  'Skills',
                  style: TextStyle(
                    color: MyColors.clr2,
                    fontWeight: FontWeight.bold,
                    fontSize: 45.0,
                  ),
                ),
                const SizedBox(height: 40.0),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ImageHoverEffect(
                        image1: "assets/cpp_normal.png",
                        image2: "assets/cpp_mod.png",
                      ),
                      const SizedBox(width: 10.0),
                      ImageHoverEffect(
                        image1: "assets/fluttericon_normal.png",
                        image2: "assets/fluttericon_mod.png",
                      ),
                      // const SizedBox(width: 10.0),
                      // ImageHoverEffect(
                      //   image1: "assets/mypic7.png",
                      //   image2: "assets/mypic8.png",
                      // ),
                      // const SizedBox(width: 10.0),
                      // ImageHoverEffect(
                      //   image1: "assets/hackerrank.png",
                      //   image2: "assets/github.png",
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Image.asset(
              "assets/mypic7.png",
              height: 600.0,
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabletLayout(String str, String str2) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Column(
        children: [
          const Text(
            'About Me',
            style: TextStyle(
              color: MyColors.clr2,
              fontWeight: FontWeight.bold,
              fontSize: 35.0,
            ),
          ),
          const SizedBox(height: 10.0),
          Image.asset(
            "assets/mypic7.png",
            height: 400.0,
            fit: BoxFit.cover,
          ),
          Text(
            str,
            style: TextStyle(fontSize: 18.0, color: Colors.white70),
          ),
          const SizedBox(height: 15.0),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              str2,
              style: TextStyle(fontSize: 18.0, color: Colors.white70),
            ),
          ),
          // str2,
          // style: TextStyle(fontSize: 18.0, color: Colors.white70),

          const SizedBox(height: 40.0),
          const Text(
            'Skills',
            style: TextStyle(
              color: MyColors.clr2,
              fontWeight: FontWeight.bold,
              fontSize: 35.0,
            ),
          ),
          const SizedBox(height: 10.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ImageHoverEffect(
                  image1: "assets/cpp_normal.png",
                  image2: "assets/cpp_mod.png",
                ),
                const SizedBox(width: 10.0),
                ImageHoverEffect(
                  image1: "assets/fluttericon_normal.png",
                  image2: "assets/fluttericon_mod.png",
                ),
                // const SizedBox(width: 10.0),
                // ImageHoverEffect(
                //   image1: "assets/mypic7.png",
                //   image2: "assets/mypic8.png",
                // ),
                // const SizedBox(width: 10.0),
                // ImageHoverEffect(
                //   image1: "assets/hackerrank.png",
                //   image2: "assets/github.png",
                // ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }

  Widget _buildMobileLayout(String str, String str2) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Column(
        children: [
          const Text(
            'About Me',
            style: TextStyle(
              color: MyColors.clr2,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
          const SizedBox(height: 10.0),
          Image.asset(
            "assets/mypic7.png",
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Text(
            str,
            style: TextStyle(fontSize: 16.0, color: Colors.white70),
          ),
          const SizedBox(height: 40.0),
          Text(
            str2,
            style: TextStyle(fontSize: 16.0, color: Colors.white70),
          ),
          const SizedBox(height: 15.0),
          const Text(
            'Skills',
            style: TextStyle(
              color: MyColors.clr2,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
          const SizedBox(height: 10.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ImageHoverEffect(
                  image1: "assets/cpp_normal.png",
                  image2: "assets/cpp_mod.png",
                ),
                const SizedBox(width: 10.0),
                ImageHoverEffect(
                  image1: "assets/fluttericon_normal.png",
                  image2: "assets/fluttericon_mod.png",
                ),
                // const SizedBox(width: 10.0),
                // ImageHoverEffect(
                //   image1: "assets/mypic7.png",
                //   image2: "assets/mypic8.png",
                // ),
                // const SizedBox(width: 10.0),
                // ImageHoverEffect(
                //   image1: "assets/hackerrank.png",
                //   image2: "assets/github.png",
                // ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
