import 'package:admissionenquiry/pages/ug/ug_course_page.dart';
import 'package:admissionenquiry/widgets/app_bar.dart';
import 'package:admissionenquiry/widgets/depts_tile.dart';
import 'package:flutter/material.dart';

class UGDeptPage extends StatelessWidget {
  const UGDeptPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: Text('UG Departments')),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          DeptTile(
              deptName: 'Department of Aeronautical Engineering',
              programmes: [
                ListTile(
                  title: const Text('B.Tech - Aeronautical Engineering'),
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
                  title: Text('B.Tech - Aerospace Engineering'),
                ),
              ]),
          const DeptTile(
              deptName: 'Department of Automobile Engineering',
              programmes: [
                ListTile(
                  title: Text('B.Tech - Automobile Engineering'),
                )
              ]),
          const DeptTile(
            deptName: 'Department of Chemical Engineering',
            programmes: [
              ListTile(
                title: Text('B.Tech - Chemical Engineering'),
              ),
              ListTile(
                title: Text('B.Tech - Biotechnology'),
              ),
            ],
          ),
          const DeptTile(
            deptName: 'Department of Computer Science and Engineering',
            programmes: [
              ListTile(
                title: Text('B.Tech - Computer Science and Engineering'),
              ),
              ListTile(
                title: Text(
                    'B.Tech - Artificial Intelligence (AI) and Data science'),
              ),
              ListTile(
                title: Text(
                    'B.Tech - Computer Science and Engineering (Artificial Intelligence and Machine Learning) '),
              ),
              ListTile(
                title: Text(
                    'B.Tech - Computer Science and Engineering (Cyber Security)'),
              ),
            ],
          ),
          const DeptTile(
            deptName: 'Department of Civil Engineering',
            programmes: [
              ListTile(
                title: Text('B.Tech - Civil Engineering'),
              ),
            ],
          ),
          const DeptTile(
            deptName: 'Department of Electronics and Communication Engineering',
            programmes: [
              ListTile(
                title:
                    Text('B.Tech - Electronics and Communications Engineering'),
              ),
            ],
          ),
          const DeptTile(
            deptName: 'Department of Electrical and Electronics Engineering',
            programmes: [
              ListTile(
                title: Text('B.Tech - Electrical and Electronics Engineering'),
              ),
            ],
          ),
          const DeptTile(
            deptName: 'Department of Information Technology',
            programmes: [
              ListTile(
                title: Text('B.Tech - Information Technology'),
              ),
            ],
          ),
          const DeptTile(
            deptName: 'Department of Mechanical Engineering',
            programmes: [
              ListTile(
                title: Text('B.Tech - Mechanical Engineering'),
              ),
              ListTile(
                title: Text('B.Tech - Mechatronics'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
