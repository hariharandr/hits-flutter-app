import 'package:admissionenquiry/pages/ug/ug_course_page.dart';
import 'package:admissionenquiry/widgets/app_bar.dart';
import 'package:admissionenquiry/widgets/depts_tile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../theme/colors.dart';

class UGDeptPage extends StatelessWidget {
  const UGDeptPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: ListView(
        padding: const EdgeInsets.only(
          top: 10,
          right: 5,
          left: 5,
        ),
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              //set border radius more than 50% of height and width to make circle
            ),
            elevation: 10,
            color: CustomColors.primaryAccentColor,
            clipBehavior: Clip.antiAlias,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: 'topic1image',
                  child: Icon(
                    color: Colors.black,
                    FontAwesomeIcons.graduationCap,
                    size: 100.0,
                  ),
                ),
                Text(
                  "UG",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    height: 1.5,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.fade,
                  // softWrap: false,
                ),
              ],
            ),
          ),
          DeptTile(
              deptName: 'Department of Aeronautical Engineering',
              programmes: [
                ListTile(
                  title: const Text(
                      style: TextStyle(color: Colors.black87, fontSize: 20),
                      'B.Tech - Aeronautical Engineering'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UGCoursePage(
                                courseName: 'B.Tech - Aeronautical Engineering',
                                topic: 'About the Programme',
                              )),
                    );
                  },
                ),
                const ListTile(
                  title: Text(
                    style: TextStyle(color: Colors.black87, fontSize: 20),
                    'B.Tech - Aerospace Engineering',
                  ),
                ),
              ]),
          const DeptTile(
              deptName: 'Department of Automobile Engineering',
              programmes: [
                ListTile(
                  title: Text(
                      style: TextStyle(color: Colors.black87, fontSize: 20),
                      'B.Tech - Automobile Engineering'),
                )
              ]),
          const DeptTile(
            deptName: 'Department of Chemical Engineering',
            programmes: [
              ListTile(
                title: Text(
                    style: TextStyle(color: Colors.black87, fontSize: 20),
                    'B.Tech - Chemical Engineering'),
              ),
              ListTile(
                title: Text(
                    style: TextStyle(color: Colors.black87, fontSize: 20),
                    'B.Tech - Biotechnology'),
              ),
            ],
          ),
          const DeptTile(
            deptName: 'Department of Computer Science and Engineering',
            programmes: [
              ListTile(
                title: Text(
                    style: TextStyle(color: Colors.black87, fontSize: 20),
                    'B.Tech - Computer Science and Engineering'),
              ),
              ListTile(
                title: Text(
                    style: TextStyle(color: Colors.black87, fontSize: 20),
                    'B.Tech - Artificial Intelligence (AI) and Data science'),
              ),
              ListTile(
                title: Text(
                    style: TextStyle(color: Colors.black87, fontSize: 20),
                    'B.Tech - Computer Science and Engineering (Artificial Intelligence and Machine Learning) '),
              ),
              ListTile(
                title: Text(
                    style: TextStyle(color: Colors.black87, fontSize: 20),
                    'B.Tech - Computer Science and Engineering (Cyber Security)'),
              ),
            ],
          ),
          const DeptTile(
            deptName: 'Department of Civil Engineering',
            programmes: [
              ListTile(
                title: Text(
                    style: TextStyle(color: Colors.black87, fontSize: 20),
                    'B.Tech - Civil Engineering'),
              ),
            ],
          ),
          const DeptTile(
            deptName: 'Department of Electronics and Communication Engineering',
            programmes: [
              ListTile(
                title: Text(
                    style: TextStyle(color: Colors.black87, fontSize: 20),
                    'B.Tech - Electronics and Communications Engineering'),
              ),
            ],
          ),
          const DeptTile(
            deptName: 'Department of Electrical and Electronics Engineering',
            programmes: [
              ListTile(
                title: Text(
                    style: TextStyle(color: Colors.black87, fontSize: 20),
                    'B.Tech - Electrical and Electronics Engineering'),
              ),
            ],
          ),
          const DeptTile(
            deptName: 'Department of Information Technology',
            programmes: [
              ListTile(
                title: Text(
                    style: TextStyle(color: Colors.black87, fontSize: 20),
                    'B.Tech - Information Technology'),
              ),
            ],
          ),
          const DeptTile(
            deptName: 'Department of Mechanical Engineering',
            programmes: [
              ListTile(
                title: Text(
                    style: TextStyle(color: Colors.black87, fontSize: 20),
                    'B.Tech - Mechanical Engineering'),
              ),
              ListTile(
                title: Text(
                    style: TextStyle(color: Colors.black87, fontSize: 20),
                    'B.Tech - Mechatronics'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
