import 'package:admissionenquiry/services/MyRoute.dart';
import 'package:admissionenquiry/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:admissionenquiry/widgets/topics/topic_item.dart';

import '../pages/ug/ug_dept_page.dart';

class Programs extends StatelessWidget {
  const Programs({super.key});

  @override
  Widget build(BuildContext context) {
    var topic1 = 'UG';
    var topic2 = 'PG';
    var topic3 = 'RESEARCH';
    var topic4 = 'CODE';
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(5),
      crossAxisSpacing: 10.0,
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        Hero(
          tag: 'topic1image',
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              //set border radius more than 50% of height and width to make circle
            ),
            elevation: 10,
            color: CustomColors.primaryAccentColor,
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (BuildContext context) => const UGDeptPage()),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Flexible(
                    flex: 3,
                    child: Center(
                      child: Icon(
                        color: Colors.black,
                        FontAwesomeIcons.graduationCap,
                        size: 70.0,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Text(
                      topic1,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        height: 1.5,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.fade,
                      softWrap: false,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Hero(
          tag: 'topic2image',
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              //set border radius more than 50% of height and width to make circle
            ),
            elevation: 10,
            color: CustomColors.primaryAccentColor,
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => const UGDeptPage(),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Flexible(
                    flex: 3,
                    child: Center(
                      child: Icon(
                        color: Colors.black,
                        FontAwesomeIcons.userGraduate,
                        size: 70.0,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Center(
                      child: Text(
                        topic2,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          // height: 1.5,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.fade,
                        softWrap: false,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Hero(
          tag: 'topic3image',
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              //set border radius more than 50% of height and width to make circle
            ),
            elevation: 10,
            color: CustomColors.primaryAccentColor,
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => const UGDeptPage(),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Flexible(
                    flex: 3,
                    child: Center(
                      child: Icon(
                        color: Colors.black,
                        FontAwesomeIcons.book,
                        size: 70.0,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Center(
                      child: Text(
                        topic3,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          height: 1.5,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.fade,
                        softWrap: false,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Hero(
          tag: 'topic4image',
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              //set border radius more than 50% of height and width to make circle
            ),
            elevation: 10,
            color: CustomColors.primaryAccentColor,
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => const UGDeptPage(),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Flexible(
                    flex: 3,
                    child: Center(
                      child: Icon(
                        color: Colors.black,
                        FontAwesomeIcons.chalkboardUser,
                        size: 70.0,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Center(
                      child: Text(
                        topic4,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          height: 1.5,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.fade,
                        softWrap: false,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
