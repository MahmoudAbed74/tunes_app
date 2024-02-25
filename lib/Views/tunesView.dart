import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

import 'package:tunes_app/Views/tuneItem.dart';
import 'package:tunes_app/model/tunesModel.dart';

class tunes extends StatelessWidget {
  const tunes({super.key});
  final List<Item> itemList = const [
    Item(colorValue: 'FF7FFF7F', soundPath: "note1.wav"),
    Item(colorValue: 'FFFF0000', soundPath: "note2.wav"),
    Item(colorValue: 'FF0000FF', soundPath: "note3.wav"),
    Item(colorValue: 'FF800080', soundPath: "note4.wav"),
    Item(colorValue: 'FF00FFFF', soundPath: "note5.wav"),
    Item(colorValue: 'FFFFA500', soundPath: "note6.wav"),
    Item(colorValue: 'FFFFC0CB', soundPath: "note7.wav"),
    Item(colorValue: 'FF008080', soundPath: "note8.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home page"),
        elevation: 0,
      ),
      body: Column(
        children: itemList
            .map(
              (e) => TunesItemView(item: e),
            )
            .toList(),
      ),
    );
  }

  // List<TunesItemView> getColor() {
  //   List<TunesItemView> itemnewList = [];
  //   for (var item in itemList) {
  //     itemnewList.add(TunesItemView(item: item));
  //   }
  //   return itemnewList;
  // }
}
