// import 'package:admissionenquiry/pages/ug/ug_course_page.dart';
// import 'package:admissionenquiry/theme/colors.dart';
// import 'package:flutter/material.dart';

// class HomePageDrawer extends StatelessWidget {
//   const HomePageDrawer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: [
//           const DrawerHeader(
//             decoration: BoxDecoration(
//               color: CustomColors.primaryAccentColor,
//             ),
//             child: Text('Explore Programs'),
//           ),
//           ListTile(
//             title: const Text('UG'),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const UGCoursePage(
//                     courseName: 'B.Tech - Aeronautical Engineering',
//                     topic: 'About the Programme',
//                   ),
//                 ),
//               );
//             },
//           ),
//           ListTile(
//             title: const Text('PG'),
//             onTap: () {
//               Navigator.pop(context);
//             },
//           ),
//           ListTile(
//             title: const Text('RESEARCH'),
//             onTap: () {
//               Navigator.pop(context);
//             },
//           ),
//           ListTile(
//             title: const Text('CODE'),
//             onTap: () {
//               Navigator.pop(context);
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:admissionenquiry/models/UGCourseRepository.dart';
import 'package:admissionenquiry/pages/ug/ug_course_page.dart';
import 'package:admissionenquiry/theme/colors.dart';
import 'package:flutter/material.dart';

List listOfProgrammes = ["UG", "PG", "RESEARCH", "CODE"];

class HomePageDrawer extends StatefulWidget {
  HomePageDrawer({super.key});

  @override
  _HomePageDrawerState createState() => _HomePageDrawerState();
}

int selectedIndex = 0;

class _HomePageDrawerState extends State<HomePageDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              curve: Curves.easeInOutCubic,
              decoration: BoxDecoration(
                color: CustomColors.primaryAccentColor,
              ),
              child: Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: Text(
                  "Explore Our Programmes",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SingleChildScrollView(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: listOfProgrammes.length,
                itemBuilder: (context, index) {
                  return Ink(
                    color: selectedIndex == index
                        ? Colors.greenAccent.withOpacity(0.5)
                        : Colors.white,
                    child: ListTile(
                      selected: true,
                      hoverColor: Colors.white,
                      title: Text(
                        listOfProgrammes.elementAt(index),
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });

                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const UGCoursePage(
                              courseName: 'B.Tech - Aeronautical Engineering',
                              topic: 'About the Programme',
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
            // Divider(),
          ],
        ),
      ),
    );
  }
}
