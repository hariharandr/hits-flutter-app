import 'package:flutter/material.dart';

Widget renderUgPageLayout(var info) {
  if (info.runtimeType == String) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        info,
        style: const TextStyle(color: Colors.blueGrey, fontSize: 20.0),
      ),
    );
  } else if (info is Map<String, String>) {
    Map<String, String> infoMap = info;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: infoMap.length,
        itemBuilder: ((context, index) {
          return Column(
            children: [
              Text(
                infoMap.keys.elementAt(index),
                style: const TextStyle(color: Colors.blueGrey, fontSize: 25.0),
              ),
              Text(
                infoMap.values.elementAt(index),
                style: const TextStyle(color: Colors.black, fontSize: 20.0),
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
              Text(
                infoMap.keys.elementAt(index1),
                style: const TextStyle(color: Colors.blueGrey, fontSize: 25.0),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: infoMap[infoMap.keys.elementAt(index1)]!.length,
                itemBuilder: (context, index2) {
                  return Wrap(
                    children: [
                      Text(
                        "${infoMap[infoMap.keys.elementAt(index1)]!.keys.elementAt(index2)}:",
                        style: const TextStyle(
                            color: Color.fromARGB(255, 17, 72, 117),
                            fontSize: 22.0),
                      ),
                      Text(
                        " ${infoMap[infoMap.keys.elementAt(index1)]!.values.elementAt(index2)}",
                        style: const TextStyle(
                            color: Colors.black, fontSize: 20.0),
                      ),
                    ],
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
  return const Text("null");
}
