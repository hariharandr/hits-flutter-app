import 'package:admissionenquiry/models/UGCourseRepository.dart';
import 'package:admissionenquiry/pages/ug/ug_course_page.dart';
import 'package:admissionenquiry/theme/colors.dart';
import 'package:flutter/material.dart';

UGCourseRepository ugRepo = UGCourseRepository();

class TopicDrawer extends StatelessWidget {
  String drawerHeader = '';

  TopicDrawer({super.key, required this.drawerHeader});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: CustomColors.accentColor,
            ),
            child: Text(drawerHeader),
          ),
          SingleChildScrollView(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: ugRepo.getCourse(drawerHeader).courseInfo.keys.length,
              itemBuilder: (context, index) {
                return ListTile(
                    title: Text(ugRepo
                        .getCourse(drawerHeader)
                        .courseInfo
                        .keys
                        .elementAt(index)),
                    onTap: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UGCoursePage(
                                  courseName: drawerHeader,
                                  topic: ugRepo
                                      .getCourse(drawerHeader)
                                      .courseInfo
                                      .keys
                                      .elementAt(index),
                                ))));
              },
            ),
          )
        ],
      ),
    );
  }
}
