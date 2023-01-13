import 'package:flutter/material.dart';
import 'package:admissionenquiry/theme/config.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // backgroundColor: Colors.white,
      toolbarHeight: 100.0,
      title: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 15.0,
            ),
            Hero(tag: "hitslogoimg", child: Image.asset('assets/HITSLogo.png')),
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
