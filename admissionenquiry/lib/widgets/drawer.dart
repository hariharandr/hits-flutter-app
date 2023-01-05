import 'package:admissionenquiry/theme/colors.dart';
import 'package:flutter/material.dart';

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
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
