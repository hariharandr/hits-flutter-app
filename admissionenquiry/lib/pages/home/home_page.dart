import 'package:admissionenquiry/theme/colors.dart';
import 'package:admissionenquiry/widgets/app_bar.dart';
import 'package:admissionenquiry/widgets/home_page_drawer.dart';
import 'package:admissionenquiry/widgets/programs.dart';
import 'package:admissionenquiry/widgets/title_animation.dart';
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
              const WavyTextLiquidFill(),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Stack(
                  children: [
                    Card(
                      // clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        //set border radius more than 50% of height and width to make circle
                      ),
                      elevation: 5,
                      color: CustomColors.primaryAccentColor.withOpacity(0.5),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 400,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          const Text(
                            'Explore Our Programmes',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const Programs(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        drawer: HomePageDrawer());
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