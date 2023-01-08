import 'package:admissionenquiry/helper/renderUgPageLayout.dart';
import 'package:admissionenquiry/models/UGCourseRepository.dart';
import 'package:admissionenquiry/widgets/drawer.dart';
import 'package:flutter/material.dart';

UGCourseRepository ugRepo = UGCourseRepository();

class UGCoursePage extends StatefulWidget {
  final String courseName;
  final String topic;

  const UGCoursePage(
      {super.key, required this.courseName, required this.topic});

  @override
  State<UGCoursePage> createState() => _UGCoursePageState();
}

class _UGCoursePageState extends State<UGCoursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                widget.topic,
                style: const TextStyle(
                  color: Colors.orange,
                  fontSize: 30.0,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              renderUgPageLayout(
                  ugRepo.getCourse(widget.courseName).courseInfo[widget.topic])
            ],
          ),
        ),
      ),
      drawer: TopicDrawer(
        drawerHeader: widget.courseName,
      ),
    );
  }
}
