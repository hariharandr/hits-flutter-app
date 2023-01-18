import 'dart:async';

import 'package:admissionenquiry/pages/home/home_page.dart';
import 'package:admissionenquiry/theme/colors.dart';
import 'package:flutter/material.dart';

import '../services/MyRoute.dart';

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
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => const HomePage()),
      ),
    );

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
        body: Container(
          alignment: Alignment.center,
          // decoration:
          //     const BoxDecoration(color: CustomColors.primaryAccentColor),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    //set border radius more than 50% of height and width to make circle
                  ),
                  elevation: 5,
                  color: CustomColors.primaryAccentColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Hero(
                          tag: "hitslogoimg",
                          child: InkWell(
                            child: Image.asset('assets/HITSLogo.png'),
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const HomePage()),
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                          height: 50,
                          child: CircularProgressIndicator(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ), //<- place where the image appears
      ),
    );
  }
}
