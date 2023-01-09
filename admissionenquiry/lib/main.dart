import 'package:admissionenquiry/routes.dart';
import 'package:flutter/material.dart';
import 'package:admissionenquiry/pages/home/home_page.dart';
import 'package:admissionenquiry/theme/custom_theme.dart';
import 'package:admissionenquiry/theme/config.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  static const appTitle = 'HITS Admission Enquiry';

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      //2
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyApp.appTitle,
      home: const SafeArea(child: HomePage()),
      theme: CustomTheme.lightTheme, //3
      darkTheme: CustomTheme.darkTheme, //4
      themeMode: currentTheme.currentTheme,
      routes: appRoutes,
      debugShowCheckedModeBanner: false,
    );
  }
}
