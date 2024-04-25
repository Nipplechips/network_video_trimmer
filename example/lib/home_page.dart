import 'dart:io';

import 'package:example/trimmer_view.dart';
import 'package:file_picker/file_picker.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Video Trimmer"),
        ),
        body: Column(children: [
          ElevatedButton(
            child: const Text("LOAD VIDEO"),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return TrimmerView(
                      File(""),
                      Uri.parse(
                          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"));
                }),
              );
            },
          )
        ]));
  }
}
