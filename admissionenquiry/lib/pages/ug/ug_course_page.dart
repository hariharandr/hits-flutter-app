import 'package:admissionenquiry/helper/renderUgPageLayout.dart';
import 'package:admissionenquiry/models/UGCourseRepository.dart';
import 'package:admissionenquiry/widgets/drawer.dart';
import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../widgets/app_bar.dart';

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
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      widget.topic,
                      style: const TextStyle(
                        color: Colors.orange,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Card(
                  // clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    //set border radius more than 50% of height and width to make circle
                  ),
                  elevation: 5,
                  color: CustomColors.primaryAccentColor.withOpacity(0.6),
                  child: renderUgPageLayout(ugRepo
                      .getCourse(widget.courseName)
                      .courseInfo[widget.topic]),
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: TopicDrawer(
        drawerHeader: widget.courseName,
      ),
    );
  }
}
