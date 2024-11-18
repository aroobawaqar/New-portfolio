import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled5/Controller/constants/color.dart';

class ContainerthreeDesktop extends StatefulWidget {
  const ContainerthreeDesktop({super.key});

  @override
  State<ContainerthreeDesktop> createState() => _ContainerthreeDesktopState();
}

class _ContainerthreeDesktopState extends State<ContainerthreeDesktop> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      color: AppColor.darkbgColor,
      child: Column(
        children: [
          SizedBox(height: 20),
          Text(
            'My Projects',
            style: GoogleFonts.inconsolata(
                color: Colors.white, fontSize: 42, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          // Displaying project details in rows with columns
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ProjectWidget(
                  projectName: 'Project One Gold Project',
                  projectDetails:
                  'The beginner\' Gold price calculator app is a sipmle project design to help calculate the price of gold in different units such as tola masha and ratti.'),
              ProjectWidget(
                  projectName: 'Project two countdown timer',
                  projectDetails:
                  'A simple beginner level countdown timer app.'),
              ProjectWidget(
                  projectName: 'Project Three WhatsApp Clone',
                  projectDetails:
                  'This project showcases a well-organized MVC(Model View Controller)archtitecture designed for a WhatsApp-like application'),

            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ProjectWidget(
                  projectName: 'Project Four FaceBook',
                  projectDetails:
                  'This repository implements a well-structured MVC(Model View Controller)architecture for a FaceBook-like app'),

            ],
          ),
        ],
      ),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  final String projectName;
  final String projectDetails;

  ProjectWidget({super.key, required this.projectName, required this.projectDetails});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(500),
                border: Border.all(color: AppColor.greenPrimaryColor, width: 7)),
            child: Center(
              child: Icon(
                Icons.developer_mode, // Icon representing the project
                color: AppColor.greenPrimaryColor,
                size: 50,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            projectName,
            style: GoogleFonts.inconsolata(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            projectDetails,
            style: GoogleFonts.inconsolata(
                color: Color(0xff767676), fontSize: 16, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
