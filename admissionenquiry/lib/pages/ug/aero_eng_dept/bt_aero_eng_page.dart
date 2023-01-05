import 'dart:async';

import 'package:admissionenquiry/widgets/drawer.dart';
import 'package:flutter/material.dart';

class BTAeroEngPage extends StatefulWidget {
  const BTAeroEngPage({super.key});

  @override
  State<BTAeroEngPage> createState() => _BTAeroEngPageState();
}

class _BTAeroEngPageState extends State<BTAeroEngPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: const [
              Text(
                'About the Programme',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 30.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "School of Aeronautical Sciences (SAS), established in 1996 is a pioneering department of one of the India's leading educational institutions in Asia, Hindustan Institute of Science & Technology. SAS is devoted to provide quality technical education in the field of Aeronautics and Aerospace Engineering.B.Tech.programme offered by SAS is accredited by the National Board of Accreditation (NBA) and National Assessment and Accreditation Council (NAAC).This programme has been designed to provide quality education for the undergraduate and postgraduate students through the blend of advanced laboratories and experienced faculties in the field of Aircraft Design, Aerodynamics, Aircraft Structures, Aircraft Propulsion, Aircraft Systems, Avionics, UAV, Aircraft Maintenance and the Advanced Materials.Syllabus is regularly updated to meet the industry demands in the Aviation, Space Exploration and Defence Sector. The school encompasses various types of Aircrafts and Flight Simulators that can provide real-time experience in handling and familiarizing with the Aircrafts.We take pride in generating the maximum Aeronautical and Aerospace engineers in the country. Many of our alumni are working as Engineers, Scientists and Faculty in the esteemed organizations at the National and International level.",
                style: TextStyle(color: Colors.blueGrey, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
      drawer: TopicDrawer(
        drawerHeader: 'BTech Aero Engineering',
      ),
    );
  }
}
