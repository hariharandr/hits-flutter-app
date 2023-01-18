import 'package:admissionenquiry/pages/home/home_page.dart';
import 'package:admissionenquiry/theme/colors.dart';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class OpenContainerSplash extends StatelessWidget {
  const OpenContainerSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: OpenContainer(
        // transitionType: transitionType,
        // transitionDuration: Duration(seconds: 3),
        openBuilder: (context, _) => HomePage(),

        closedColor: CustomColors.primaryAccentColor,
        closedShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        closedBuilder: (context, _) => Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            alignment: Alignment.center,
            height: 200,
            child: Column(
              children: [
                Image.asset('assets/HITSLogo.png'),
                const SizedBox(
                  width: 50,
                  height: 50,
                  child: CircularProgressIndicator(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
