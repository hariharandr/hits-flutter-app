import 'package:flutter/material.dart';
import 'checkIfAssetOrText.dart';

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
                  child: checkIfAssetOrText(infoMap.values.elementAt(index))),
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
    return const Text("null");
  }
}
