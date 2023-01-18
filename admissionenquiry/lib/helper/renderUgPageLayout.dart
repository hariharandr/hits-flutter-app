import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';

Widget checkIfAssetOrText(String text) {
  if (text.contains(RegExp(r'https?:\/\/\S+')) && text.endsWith(".jpg")) {
    return CachedNetworkImage(
      placeholder: (context, url) => const CircularProgressIndicator(),
      imageUrl: text,
    );
  } else if (text.endsWith(".pdf")) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        child: Text(
          "View PDF",
          style: const TextStyle(
              color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),
        onTap: () async {
          var url = "https://www.example.com/document.pdf";
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            throw 'Could not launch $url';
          }
        },
      ),
    );
  } else {
    return Text(
      "\t\t " + text,
      style: const TextStyle(color: Colors.black, fontSize: 20.0),
      textAlign: TextAlign.left,
    );
  }
}

Widget renderUgPageLayout(var info) {
  if (info.runtimeType == String) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
      child: Text(
        "\t\t" + info,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20.0,
          height: 1.5,
          // wordSpacing: 2,
          // letterSpacing: 1.0,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.justify,
      ),
    );
  } else if (info is Map<String, String>) {
    Map<String, String> infoMap = info;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: infoMap.length,
        itemBuilder: ((context, index) {
          // Laboratories
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 2),
                child: Text(
                  infoMap.keys.elementAt(index),
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: checkIfAssetOrText(infoMap.values.elementAt(index)),
                // Text(
                //   "\t\t url" +infoMap.values.elementAt(index) ,
                //   style: const TextStyle(color: Colors.black, fontSize: 20.0),
                //   textAlign: TextAlign.justify,
                // ),
              ),
            ],
          );
        }),
      ),
    );
  } else if (info is Map<String, Map<String, String>>) {
    Map<String, Map<String, String>> infoMap = info;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: infoMap.length,
        itemBuilder: (context, index1) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 5),
                child: Text(
                  infoMap.keys.elementAt(index1),
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: infoMap[infoMap.keys.elementAt(index1)]!.length,
                itemBuilder: (context, index2) {
                  return Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5, top: 15),
                        child: Text(
                          "${infoMap[infoMap.keys.elementAt(index1)]!.keys.elementAt(index2)}:",
                          style: const TextStyle(
                            color: Color.fromARGB(255, 17, 72, 117),
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      checkIfAssetOrText(
                          infoMap[infoMap.keys.elementAt(index1)]!
                              .values
                              .elementAt(index2))
                      // Text(
                      //   "\t\t  url ${infoMap[infoMap.keys.elementAt(index1)]!.values.elementAt(index2)}",
                      //   style: const TextStyle(
                      //       color: Colors.black, fontSize: 20.0),
                      // ),
                    ],
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  } else {
    return Text("");
  }
}
