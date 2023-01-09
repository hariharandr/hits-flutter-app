import 'package:admissionenquiry/widgets/app_bar.dart';
import 'package:admissionenquiry/widgets/drawer.dart';
import 'package:admissionenquiry/widgets/programs.dart';
import 'package:admissionenquiry/widgets/title.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            WavyTextLiquidFill(),
            Text(
              'Explore Our Programmes',
              style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.center,
            ),
            const Programs(),
          ],
        ),
      ),
      drawer: TopicDrawer(
        drawerHeader: 'Home',
      ),
    );
  }
}


//  Center(
//         child: Column(
//           children: [
//             const SizedBox(height: 80.0),
//             Text(
//               'Explore programmes offered by HITS',
//               style: Theme.of(context).textTheme.headline4,
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(
//               height: 100.0,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 TextButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const UGDeptPage()),
//                     );
//                   },
//                   child: const Text(
//                     'UG',
//                     style: TextStyle(
//                       fontSize: 30.0,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(width: 100.0),
//                 TextButton(
//                   onPressed: () {},
//                   child: const Text(
//                     'PG',
//                     style: TextStyle(
//                       fontSize: 30.0,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 40.0,
//             ),
//             TextButton(
//               onPressed: () {},
//               child: const Text(
//                 'Research',
//                 style: TextStyle(
//                   fontSize: 30.0,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 40,
//             ),
//             TextButton(
//               onPressed: () {},
//               child: const Text(
//                 'CODE',
//                 style: TextStyle(
//                   fontSize: 30.0,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),