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
          const SizedBox(height: 40.0),
          ProjectWidget(
            "▪News app built using Flutter.\n▪The app uses the API service newsapi.org to fetch news.\n▪It integrates a WebView for reading complete articles within the app.",
            "mockup1_update.png",
            "Flutter Dart newsapi.org",
            "QuickRead",
            "https://github.com/ap217/quick_read",
            "https://github.com/ap217/quick_read/blob/main/QuickRead.apk",
            "▪Download APK",
          ),
          SizedBox(height: 40.0),
          ProjectWidget2(
            "▪Employee Management App developed using Flutter(Frontend), Node.js(Backend) and MongoDB(Database).\n▪App with 3 role, employee, manager and admin.",
            "mockup2se.png",
            "Flutter Dart",
            "nicher",
            "https://github.com/ap217/IT314_project_1",
            "https://github.com/ap217/IT314_project_1/blob/main/nicher.apk",
            "▪Download APK",
          ),
          SizedBox(height: 40.0),
          ProjectWidget(
            "▪Simple Contact List App.\n▪Use MongoDB Cloud as database.\n▪Project to learn CRUD operations on databse using mongoDB.",
            "mockup4db.png",
            "Flutter MongoDB Cloud Node.js",
            "Contact List",
            "https://github.com/ap217/contactListMongoNode",
            "##",
            "##",
          ),
          SizedBox(height: 40.0),
          ProjectWidget2(
            "▪Portfolio Website built using Flutter.\n▪It is a responsive web app that works on all devices.\n▪It is hosted on Firebase Hosting.",
            "mockup3pf.png",
            "Flutter Dart Firebase",
            "Personal Portfolio",
            "https://github.com/ap217/portfolio",
            "##",
            "##",
          ),
          SizedBox(height: 40.0),
        ],
      ),
    );
  }
}
