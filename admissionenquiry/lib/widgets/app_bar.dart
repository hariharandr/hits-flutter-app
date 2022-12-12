import 'package:flutter/material.dart';
import 'package:admissionenquiry/theme/config.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final Widget title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff2e3745),
      toolbarHeight: 100.0,
      title: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 15.0,
            ),
            title,
          ],
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.brightness_4),
          onPressed: () => currentTheme.toggleTheme(),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100.0);
}
