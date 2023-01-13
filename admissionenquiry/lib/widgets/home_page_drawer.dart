import 'package:admissionenquiry/pages/ug/ug_course_page.dart';
import 'package:admissionenquiry/theme/colors.dart';
import 'package:flutter/material.dart';

class HomePageDrawer extends StatelessWidget {
  const HomePageDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: CustomColors.accentColor,
            ),
            child: Text('Explore Programs'),
          ),
          ListTile(
            title: const Text('UG'),
            onTap: () {
              Navigator.push(
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
          ListTile(
            title: const Text('PG'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('RESEARCH'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('CODE'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
