import 'package:admissionenquiry/models/UGCourseRepository.dart';
import 'package:admissionenquiry/pages/ug/ug_course_page.dart';
import 'package:admissionenquiry/theme/colors.dart';
import 'package:flutter/material.dart';

UGCourseRepository ugRepo = UGCourseRepository();

// class TopicDrawer extends StatelessWidget {
//   String drawerHeader = '';

//   TopicDrawer({super.key, required this.drawerHeader});

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: [
//           DrawerHeader(
//             // padding: EdgeInsets.only(top: 20),

//             curve: Curves.easeInOutCubic,
//             decoration: BoxDecoration(
//               color: CustomColors.primaryAccentColor,
//               // borderRadius: Border.all(),
//             ),
//             child: Align(
//               alignment: AlignmentDirectional.bottomEnd,
//               child: Text(
//                 drawerHeader,
//                 style: TextStyle(
//                   fontSize: 25,
//                   fontWeight: FontWeight.bold,
//                 ),
//                 textAlign: TextAlign.justify,
//               ),
//             ),
//           ),
//           SingleChildScrollView(
//             child: ListView.builder(
//               scrollDirection: Axis.vertical,
//               shrinkWrap: true,
//               itemCount: ugRepo.getCourse(drawerHeader).courseInfo.keys.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(
//                     ugRepo
//                         .getCourse(drawerHeader)
//                         .courseInfo
//                         .keys
//                         .elementAt(index),
//                     style: TextStyle(fontSize: 20),
//                   ),
//                   onTap: () => Navigator.pushReplacement(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => UGCoursePage(
//                         courseName: drawerHeader,
//                         topic: ugRepo
//                             .getCourse(drawerHeader)
//                             .courseInfo
//                             .keys
//                             .elementAt(index),
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

class TopicDrawer extends StatefulWidget {
  String drawerHeader = '';
  TopicDrawer({super.key, required this.drawerHeader});

  @override
  _TopicDrawerState createState() => _TopicDrawerState();
}

int selectedIndex = 0;

class _TopicDrawerState extends State<TopicDrawer> {
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
                  widget.drawerHeader,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            SingleChildScrollView(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: ugRepo
                    .getCourse(widget.drawerHeader)
                    .courseInfo
                    .keys
                    .length,
                itemBuilder: (context, index) {
                  return Ink(
                    color: selectedIndex == index
                        ? Colors.greenAccent.withOpacity(0.5)
                        : Colors.white,
                    child: ListTile(
                      selected: true,
                      hoverColor: Colors.white,
                      title: Text(
                        ugRepo
                            .getCourse(widget.drawerHeader)
                            .courseInfo
                            .keys
                            .elementAt(index),
                        style:
                            const TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });

                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UGCoursePage(
                              courseName: widget.drawerHeader,
                              topic: ugRepo
                                  .getCourse(widget.drawerHeader)
                                  .courseInfo
                                  .keys
                                  .elementAt(index),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                  // ListTile(
                  //   title: Text(
                  //     ugRepo
                  //         .getCourse(drawerHeader)
                  //         .courseInfo
                  //         .keys
                  //         .elementAt(index),
                  //     style: TextStyle(fontSize: 20),
                  //   ),
                  //   onTap: () => Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => UGCoursePage(
                  //         courseName: drawerHeader,
                  //         topic: ugRepo
                  //             .getCourse(drawerHeader)
                  //             .courseInfo
                  //             .keys
                  //             .elementAt(index),
                  //       ),
                  //     ),
                  //   ),
                  // );
                },
              ),
            ),
            // _createDrawerItem(
            //     icon: Icons.timer,
            //     text: 'Timer',
            //     isSelected: selectedIndex == 0,
            //     onTap: () {
            //       setState(() {
            //         selectedIndex = 0;
            //       });

            //       Navigator.pushReplacementNamed(context, "/page0");
            //     }),
            // _createDrawerItem(
            //   icon: Icons.history,
            //   text: 'History',
            //   isSelected: selectedIndex == 1,
            //   onTap: () {
            //     setState(() {
            //       selectedIndex = 1;
            //     });

            //     Navigator.pushReplacementNamed(context, "/page1");
            //   },
            // ),
            // _createDrawerItem(
            //     icon: Icons.help,
            //     text: 'Help & Support',
            //     isSelected: selectedIndex == 2,
            //     onTap: () {
            //       setState(() {
            //         selectedIndex = 2;
            //       });

            //       Navigator.pushReplacementNamed(context, "/page2");
            //     }),
            // _createDrawerItem(
            //     icon: Icons.rate_review,
            //     text: 'Write a Review',
            //     isSelected: selectedIndex == 3,
            //     onTap: () {
            //       setState(() {
            //         selectedIndex = 3;
            //       });

            //       Navigator.pushReplacementNamed(context, "/page3");
            //     }),
            Divider(),
          ],
        ),
      ),
    );
  }
}

// Widget _createDrawerItem(
//     {String text, GestureTapCallback onTap, bool isSelected}) {
//   return Ink(
//     color: isSelected ? Color(0xffE3EAFF) : Colors.transparent,
//     child: ListTile(
//       selected: true,
//       hoverColor: Colors.white,
//       title: Row(
//         children: <Widget>[
//           Padding(
//             padding: EdgeInsets.only(left: 8.0),
//             child: Text(text),
//           )
//         ],
//       ),
//       onTap: onTap,
//     ),
//   );
// }
