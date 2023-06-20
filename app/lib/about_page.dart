import 'package:flutter/material.dart';

import 'image_hover_effect.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    String str = "I Am Aditya Patel, Student Developer";
    String str2 =
        "Experienced Android Developer with a demonstrated history of working in the computer software industry. Skilled in Loyalty Programs, Mobile Applications, Java, and last my most favourite flutter framework (builded over more than 15 projects on it). Strong engineering professional with a High School Diploma focused in Information Technology from Vidyalankar Group of Educational Institutes. ";

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
                    color: Color(0xff48E1EC),
                    fontWeight: FontWeight.bold,
                    fontSize: 45.0,
                  ),
                ),
                const SizedBox(height: 20.0),
                Text(
                  str,
                  style: TextStyle(fontSize: 23.0, color: Colors.white70),
                ),
                const SizedBox(height: 25.0),
                Text(
                  str2,
                  style: TextStyle(fontSize: 23.0, color: Colors.white70),
                ),
                const SizedBox(height: 40.0),
                const Text(
                  'Skills',
                  style: TextStyle(
                    color: Color(0xff48E1EC),
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
                        image1: "assests/facebook.png",
                        image2: "assests/github.png",
                      ),
                      const SizedBox(width: 10.0),
                      ImageHoverEffect(
                        image1: "assests/mypic.png",
                        image2: "assests/mypic7.png",
                      ),
                      const SizedBox(width: 10.0),
                      ImageHoverEffect(
                        image1: "assests/mypic7.png",
                        image2: "assests/mypic8.png",
                      ),
                      const SizedBox(width: 10.0),
                      ImageHoverEffect(
                        image1: "assests/hackerrank.png",
                        image2: "assests/github.png",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Image.asset(
              "assests/mypic7.png",
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
              color: Color(0xff48E1EC),
              fontWeight: FontWeight.bold,
              fontSize: 35.0,
            ),
          ),
          const SizedBox(height: 10.0),
          Image.asset(
            "assests/mypic7.png",
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
              color: Color(0xff48E1EC),
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
                  image1: "assests/facebook.png",
                  image2: "assests/github.png",
                ),
                const SizedBox(width: 10.0),
                ImageHoverEffect(
                  image1: "assests/mypic.png",
                  image2: "assests/mypic7.png",
                ),
                const SizedBox(width: 10.0),
                ImageHoverEffect(
                  image1: "assests/mypic7.png",
                  image2: "assests/mypic8.png",
                ),
                const SizedBox(width: 10.0),
                ImageHoverEffect(
                  image1: "assests/hackerrank.png",
                  image2: "assests/github.png",
                ),
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
              color: Color(0xff48E1EC),
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
          const SizedBox(height: 10.0),
          Image.asset(
            "assests/mypic7.png",
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
              color: Color(0xff48E1EC),
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
                  image1: "assests/facebook.png",
                  image2: "assests/github.png",
                ),
                const SizedBox(width: 10.0),
                ImageHoverEffect(
                  image1: "assests/mypic.png",
                  image2: "assests/mypic7.png",
                ),
                const SizedBox(width: 10.0),
                ImageHoverEffect(
                  image1: "assests/mypic7.png",
                  image2: "assests/mypic8.png",
                ),
                const SizedBox(width: 10.0),
                ImageHoverEffect(
                  image1: "assests/hackerrank.png",
                  image2: "assests/github.png",
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
