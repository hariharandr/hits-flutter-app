import 'package:flutter/material.dart';
import '../values.dart';

class DeptTile extends StatelessWidget {
  final String deptName;
  final List<Widget> programmes;

  const DeptTile({
    super.key,
    required this.deptName,
    required this.programmes,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        title: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Text(
            deptName,
            style: TextStyle(fontSize: deptsFontSize),
          ),
        ),
        children: programmes);
  }
}
