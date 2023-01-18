import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
        child: const Text(
          "View PDF",
          style: TextStyle(
              color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),
        onTap: () async {
          var url = "https://www.example.com/document.pdf";
          if (await canLaunchUrlString(url)) {
            await launchUrlString(url);
          } else {
            throw 'Could not launch $url';
          }
        },
      ),
    );
  } else {
    return Text(
      "\t\t $text",
      style: const TextStyle(color: Colors.black, fontSize: 20.0),
      textAlign: TextAlign.left,
    );
  }
}
