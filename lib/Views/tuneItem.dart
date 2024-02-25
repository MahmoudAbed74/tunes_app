import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

import 'package:tunes_app/model/tunesModel.dart';

int hexToInteger(String hex) => int.parse(hex, radix: 16);

extension StringColorExtensions on String {
  Color toColor() => Color(hexToInteger(this));
}

class TunesItemView extends StatelessWidget {
  const TunesItemView({super.key, required this.item});

  final Item item;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: item.playSound(),
        child: Container(
          width: double.infinity,
          color: Color(hexToInteger(item.colorValue)),
        ),
      ),
    );
  }
}
