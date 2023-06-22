import 'package:flutter/material.dart';
import 'my_colors.dart';
import 'project_widget.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});

  @override
  _ProjectPageState createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.8,
      padding: const EdgeInsets.fromLTRB(50.0, 50.0, 60.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'My Projects',
            style: TextStyle(
                color: MyColors.clr2,
                fontWeight: FontWeight.bold,
                fontSize: 45.0),
          ),
          SizedBox(height: 40.0),
          ProjectWidget(
              "News app built using Flutter.\nThe app uses the API service newsapi.org to fetch news.\nIt integrates a WebView for reading complete articles within the app.",
              "mockup1.png",
              "Flutter Dart newsapi.org",
              "QuickRead",
              "https://github.com/ap217/quick_read"),
          ProjectWidget2(
            "Social Media Application Builded With Android Studio And Firebase(Backend)",
            "project2.png",
            "Android Studio Java Firebase",
            "PinGo",
            "https://github.com/ap217",
          ),
          ProjectWidget(
            "NetFlix Mobile And Web Ui Clone Builded With Flutter",
            "project3.png",
            "Flutter Dart ",
            "NetFlix UI",
            "https://github.com/ap217",
          ),
          ProjectWidget2(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been.",
              "project1.png",
              "Flutter Dart Firebase",
              "asda",
              "https://github.com/ap217"),
        ],
      ),
    );
  }
}
