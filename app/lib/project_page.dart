import 'package:flutter/material.dart';
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
                color: Color(0xff48E1EC),
                fontWeight: FontWeight.bold,
                fontSize: 45.0),
          ),
          SizedBox(height: 40.0),
          ProjectWidget(
              "Food delivery Application Build With Flutter And Firebase (Backend)",
              "project2.png",
              "Flutter Dart Firebase",
              "Foodie"),
          ProjectWidget2(
              "Social Media Application Builded With Android Studio And Firebase(Backend)",
              "project2.png",
              "Android Studio Java Firebase",
              "PinGo"),
          ProjectWidget(
            "NetFlix Mobile And Web Ui Clone Builded With Flutter",
            "project3.png",
            "Flutter Dart ",
            "NetFlix UI",
          ),
          ProjectWidget2(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been.",
              "project1.png",
              "Flutter Dart Firebase",
              "asda"),
        ],
      ),
    );
  }
}
