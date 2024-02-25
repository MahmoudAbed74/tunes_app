import 'package:audioplayers/audioplayers.dart';

class Item {
  final String colorValue;
  final String soundPath;

  const Item({required this.colorValue, required this.soundPath});

  playSound() {
    // AudioCache.instance = AudioCache(prefix: '');
    final player = AudioPlayer();
    player.play(AssetSource('note2.wav'));
  }
}
