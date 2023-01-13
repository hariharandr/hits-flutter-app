import 'dart:async';

import 'package:admissionenquiry/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class CustomSplashScreen extends StatefulWidget {
  const CustomSplashScreen({super.key});

  @override
  Splash createState() => Splash();
}

class Splash extends State<CustomSplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const HomePage())));

    // var assetsImage = const AssetImage(
    //     'assets/HITSLogo.png'); //<- Creates an object that fetches an image.
    // var image = Image(
    //     image: assetsImage,
    //     height: 300); //<- Creates a widget that displays an image.

    return MaterialApp(
      home: Scaffold(
        /* appBar: AppBar(
          title: Text("MyApp"),
          backgroundColor:
              Colors.blue, //<- background color to combine with the picture :-)
        ),*/
        body: Center(
          child: Container(
            decoration: const BoxDecoration(color: Colors.greenAccent),
            child: Column(
              children: [
                Hero(
                    tag: "hitslogoimg",
                    child: InkWell(child: Image.asset('assets/HITSLogo.png'))),
                const SizedBox(
                  width: 50,
                  height: 50,
                  child: CircularProgressIndicator(),
                ),
              ],
            ),
          ),
        ), //<- place where the image appears
      ),
    );
  }
}
